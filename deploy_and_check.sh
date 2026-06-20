#!/bin/bash
# deploy_and_check.sh
# 构建、部署 Hexo 博客，并验证关键页面已更新。
# 用法：bash deploy_and_check.sh
# 或：直接双击 / 从 Claude 调用

set -euo pipefail

BLOG_DIR="$(cd "$(dirname "$0")" && pwd)"
BASE_URL="https://qyanglab.github.io"

# 需要验证的关键页面（URL → 预期包含的字符串）
declare -A CHECK_PAGES=(
  ["$BASE_URL/resources/PGM-syllabus.html"]="课程作业说明"
  ["$BASE_URL/resources/index.html"]="Interactive Demos"
  ["$BASE_URL/showcase/ch1_all_demos.html"]="Chapter 1 Demos"
  ["$BASE_URL/showcase/ch12_all_demos.html"]="Necker"
  ["$BASE_URL/showcase/ch10_all_demos.html"]="Saffran"
)

log() { echo "[$(date '+%H:%M:%S')] $*"; }
err() { echo "[$(date '+%H:%M:%S')] ❌ $*" >&2; }
ok()  { echo "[$(date '+%H:%M:%S')] ✅ $*"; }

# ── 1. 构建 ──────────────────────────────────────────────
log "Step 1: hexo clean + generate"
cd "$BLOG_DIR"
npx hexo clean   2>&1 | grep -E "INFO|WARN|ERROR" || true
npx hexo generate 2>&1 | grep -E "INFO|WARN|ERROR|files generated" || true

# ── 2. 部署 ──────────────────────────────────────────────
log "Step 2: hexo deploy"
npx hexo deploy 2>&1 | grep -E "INFO|WARN|ERROR|Branch|remote" || true
ok "Deploy 完成，等待 GitHub Pages 更新（最多 60 秒）..."

# ── 3. 等待 GitHub Pages 生效 ────────────────────────────
sleep 30

# ── 4. 逐页检查 ──────────────────────────────────────────
log "Step 3: 验证页面"
PASS=0
FAIL=0
FAIL_PAGES=()

for url in "${!CHECK_PAGES[@]}"; do
  expected="${CHECK_PAGES[$url]}"
  # 最多重试 3 次（每次间隔 15 秒）
  found=false
  for attempt in 1 2 3; do
    content=$(curl -sL --max-time 15 "$url" 2>/dev/null)
    if echo "$content" | grep -q "$expected"; then
      ok "$url  ←  包含 \"$expected\""
      PASS=$((PASS + 1))
      found=true
      break
    else
      # 检查是否仍有 Hexo 导航栏包裹（showcase 页不应有）
      if echo "$url" | grep -q "/showcase/" && echo "$content" | grep -q "LoT Lab"; then
        err "$url  ←  仍被 Hexo 模板包裹！skip_render 未生效"
        FAIL_PAGES+=("$url [被模板包裹]")
        FAIL=$((FAIL + 1))
        found=true  # 不再重试，问题明确
        break
      fi
      if [ "$attempt" -lt 3 ]; then
        log "  第 $attempt 次未找到，15 秒后重试..."
        sleep 15
      fi
    fi
  done
  if [ "$found" = false ]; then
    err "$url  ←  未找到 \"$expected\""
    FAIL_PAGES+=("$url [内容缺失]")
    FAIL=$((FAIL + 1))
  fi
done

# ── 5. 汇报 ──────────────────────────────────────────────
echo ""
echo "══════════════════════════════════"
echo "  部署检查结果：✅ $PASS 通过  ❌ $FAIL 失败"
echo "══════════════════════════════════"
if [ ${#FAIL_PAGES[@]} -gt 0 ]; then
  echo "失败页面："
  for p in "${FAIL_PAGES[@]}"; do
    echo "  - $p"
  done
  exit 1
else
  echo "所有页面验证通过 🎉"
  exit 0
fi
