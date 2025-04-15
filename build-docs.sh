#!/usr/bin/env bash
set -euo pipefail

SOURCE_DIR="tech"
DOCS_DIR="docs"
SITES_DIR="$DOCS_DIR/sites"
PROMPTS_DIR="$DOCS_DIR/prompts"
ASSETS_DIR="$DOCS_DIR/assets"
CONFIG_FILE="mkdocs.yml"

log_info()    { echo -e "\033[0;34m[INFO]\033[0m $*"; }
log_success() { echo -e "\033[0;32m[SUCCESS]\033[0m $*"; }
log_warn()    { echo -e "\033[0;33m[WARN]\033[0m $*"; }

# === Reset docs
log_info "Rebuilding $DOCS_DIR structure..."
rm -rf "$DOCS_DIR"
mkdir -p "$SITES_DIR" "$PROMPTS_DIR" "$ASSETS_DIR"

# === Create index.md
cat > "$DOCS_DIR/index.md" <<EOF
# Awesome Prompt Engineering

Reusable prompts for DevOps, SRE, Infrastructure, and more.

Explore categories using the sidebar or jump directly to specific prompts.

EOF

# === Create mkdocs.yml
cat > "$CONFIG_FILE" <<EOF
site_name: Awesome Prompt Engineering
site_url: https://tamld.github.io/awesome-prompt-engineering/
repo_name: tamld/awesome-prompt-engineering
repo_url: https://github.com/tamld/awesome-prompt-engineering
site_author: Tam Le Duc
site_description: Curated, structured prompt engineering examples for developers and DevOps.

theme:
  name: material
  features:
    - navigation.instant
    - toc.integrate
    - search.suggest
    - search.highlight
    - content.code.copy
    - navigation.indexes

markdown_extensions:
  - admonition
  - toc:
      permalink: true
  - tables
  - attr_list
  - pymdownx.highlight
  - pymdownx.superfences
  - pymdownx.details
  - pymdownx.extra
  - pymdownx.inlinehilite

plugins:
  - search

nav:
  - Home: index.md
EOF

# === Process each category
for CATEGORY in "$SOURCE_DIR"/*/; do
  [ -d "$CATEGORY" ] || continue
  CATEGORY_NAME=$(basename "$CATEGORY")
  CATEGORY_FILE="$SITES_DIR/${CATEGORY_NAME}.md"
  CATEGORY_TITLE=$(echo "$CATEGORY_NAME" | sed 's/-/ /g' | sed 's/\b\(.\)/\u\1/g')

  echo "# $CATEGORY_TITLE" > "$CATEGORY_FILE"
  echo -e "[🔙 Return to homepage](../index.md)\n" >> "$CATEGORY_FILE"

  # Add overview if exists
  if [ -f "$CATEGORY/README.md" ]; then
    echo "## Overview" >> "$CATEGORY_FILE"
    cat "$CATEGORY/README.md" >> "$CATEGORY_FILE"
    echo "" >> "$CATEGORY_FILE"
  fi

  echo -e "\n## Prompts\n" >> "$CATEGORY_FILE"
  PROMPT_COUNT=0
  while IFS= read -r -d '' prompt; do
    fname=$(basename "$prompt")
    cp "$prompt" "$PROMPTS_DIR/$fname"
    echo "- [$fname](../prompts/$fname)" >> "$CATEGORY_FILE"
    PROMPT_COUNT=$((PROMPT_COUNT + 1))
  done < <(find "$CATEGORY" -type f -name "*.prompt" -print0 | sort -z)

  if [[ $PROMPT_COUNT -eq 0 ]]; then
    echo "_No prompts found._" >> "$CATEGORY_FILE"
    log_warn "No .prompt in $CATEGORY_NAME"
  fi

  echo -e "\n---\n[🔙 Return to homepage](../index.md)" >> "$CATEGORY_FILE"
  echo "  - $CATEGORY_TITLE: sites/${CATEGORY_NAME}.md" >> "$CONFIG_FILE"
done

log_success "Finished building prompt documentation structure"
