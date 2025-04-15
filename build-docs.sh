#!/bin/bash

set -e

# Define paths
SOURCE_DIR="tech"
DOCS_DIR="docs"
CONFIG_FILE="mkdocs.yml"

# Clear docs
echo "[INFO] Rebuilding docs directory..."
rm -rf "$DOCS_DIR"
mkdir -p "$DOCS_DIR"

# Create index.md
cat > "$DOCS_DIR/index.md" <<EOF
# 🧠 Awesome Prompt Engineering

Welcome to the official documentation site for **Awesome Prompt Engineering** – a curated collection of structured, reusable prompts for AI systems like ChatGPT, Claude, and Gemini.

Start exploring prompts by category on the left.
EOF

# Create mkdocs.yml header
cat > "$CONFIG_FILE" <<EOF
site_name: Awesome Prompt Engineering
site_description: Structured, reusable prompts for ChatGPT, Claude, Gemini – focused on DevOps, scripting & infrastructure.
site_url: https://tamld.github.io/awesome-prompt-engineering/
theme:
  name: material
  features:
    - navigation.instant
    - navigation.tracking
    - toc.integrate
    - search.suggest
    - search.highlight
    - content.tabs.link
markdown_extensions:
  - admonition
  - codehilite
  - toc
  - tables
  - attr_list
  - def_list
plugins:
  - search
nav:
  - Home: index.md
EOF

# Loop through each category
for CATEGORY in $(find "$SOURCE_DIR" -mindepth 1 -maxdepth 1 -type d | sort); do
    CATEGORY_NAME=$(basename "$CATEGORY")
    CATEGORY_TITLE=$(echo "$CATEGORY_NAME" | sed 's/-/ /g' | sed 's/\b\(\w\)/\u\1/g')

    OUTFILE="$DOCS_DIR/$CATEGORY_NAME.md"
    echo "[INFO] Generating $OUTFILE..."
    echo "# $CATEGORY_TITLE" > "$OUTFILE"

    # Add README.md if exists
    if [ -f "$CATEGORY/README.md" ]; then
        echo "" >> "$OUTFILE"
        echo "## Overview" >> "$OUTFILE"
        cat "$CATEGORY/README.md" >> "$OUTFILE"
        echo "" >> "$OUTFILE"
    fi

    # Append all .prompt files
    for PROMPT in $(find "$CATEGORY" -type f -name "*.prompt" | sort); do
        PNAME=$(basename "$PROMPT")
        echo "---" >> "$OUTFILE"
        echo "## \`$PNAME\`" >> "$OUTFILE"
        echo '```text' >> "$OUTFILE"
        cat "$PROMPT" >> "$OUTFILE"
        echo '```' >> "$OUTFILE"
        echo "" >> "$OUTFILE"
    done

    echo "  - $CATEGORY_TITLE: $CATEGORY_NAME.md" >> "$CONFIG_FILE"
done

echo "[OK] Docs rebuilt successfully."
