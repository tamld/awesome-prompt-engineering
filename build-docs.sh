#!/bin/bash

# Exit on error
set -e

# Define paths
SOURCE_DIR="tech"
DOCS_DIR="docs"
CONFIG_FILE="mkdocs.yml"
ASSETS_DIR="$DOCS_DIR/assets"

# Log function for better output
log_info() {
    echo -e "\033[0;34m[INFO]\033[0m $1"
}

log_success() {
    echo -e "\033[0;32m[SUCCESS]\033[0m $1"
}

log_warning() {
    echo -e "\033[0;33m[WARNING]\033[0m $1"
}

# Clear docs
log_info "Rebuilding docs directory..."
rm -rf "$DOCS_DIR"
mkdir -p "$DOCS_DIR"
mkdir -p "$ASSETS_DIR"

# Create assets and copy image if needed
if [ -d "assets" ]; then
    log_info "Copying assets to docs directory..."
    cp -r assets/* "$ASSETS_DIR"
fi

# Create index.md with more detailed content
log_info "Creating index.md..."
cat > "$DOCS_DIR/index.md" <<EOF
# Awesome Prompt Engineering

Curated, reusable prompts for AI assistants in DevOps, SysAdmin, Infrastructure, and more.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![Categories](https://img.shields.io/badge/Categories-10%2B-blue)
![Prompts](https://img.shields.io/badge/Prompts-50%2B-green)

![Awesome Prompt Engineering](assets/prompt-engineering.png)

## 🌟 About This Repository

This repository serves as a centralized collection of carefully crafted prompts that produce consistent, high-quality responses from AI models. The prompts are organized by category and include detailed explanations of:

- How each prompt works
- When to use it
- How to modify it for your specific needs
- Expected outputs and behaviors

The focus is on practical, task-oriented prompts that help solve real-world problems, particularly in technical fields.

## 📚 Categories

Use the navigation on the left to explore prompts by category.
EOF

# Create mkdocs.yml with improved configuration
log_info "Creating mkdocs.yml configuration..."
cat > "$CONFIG_FILE" <<EOF
site_name: Awesome Prompt Engineering
site_description: Structured, reusable prompts for ChatGPT, Claude, Gemini – focused on DevOps, scripting & infrastructure.
site_url: https://tamld.github.io/awesome-prompt-engineering/
site_author: Tam Le Duc

repo_name: tamld/awesome-prompt-engineering
repo_url: https://github.com/tamld/awesome-prompt-engineering

theme:
  name: material
  palette:
    primary: indigo
    accent: indigo
  features:
    - navigation.instant
    - navigation.tracking
    - toc.integrate
    - search.suggest
    - search.highlight
    - content.tabs.link
    - navigation.expand
    - navigation.indexes
  
markdown_extensions:
  - admonition
  - codehilite
  - toc:
      permalink: true
  - tables
  - attr_list
  - def_list
  - pymdownx.highlight
  - pymdownx.superfences
  - footnotes
  - md_in_html

plugins:
  - search

nav:
  - Home: index.md
EOF

# Count for statistics
total_categories=0
total_prompts=0
categories_with_prompts=0

# Loop through each category
for CATEGORY in $(find "$SOURCE_DIR" -mindepth 1 -maxdepth 1 -type d | sort); do
    CATEGORY_NAME=$(basename "$CATEGORY")
    CATEGORY_TITLE=$(echo "$CATEGORY_NAME" | sed 's/-/ /g' | sed 's/\b\(\w\)/\u\1/g')
    total_categories=$((total_categories + 1))
    
    OUTFILE="$DOCS_DIR/$CATEGORY_NAME.md"
    log_info "Generating $OUTFILE..."
    echo "# $CATEGORY_TITLE" > "$OUTFILE"
    
    # Add README.md if exists
    if [ -f "$CATEGORY/README.md" ]; then
        echo "" >> "$OUTFILE"
        echo "## Overview" >> "$OUTFILE"
        cat "$CATEGORY/README.md" >> "$OUTFILE"
        echo "" >> "$OUTFILE"
    else
        echo "" >> "$OUTFILE"
        echo "## Overview" >> "$OUTFILE"
        echo "This section contains prompts for $CATEGORY_TITLE." >> "$OUTFILE"
        echo "" >> "$OUTFILE"
        log_warning "No README.md found for $CATEGORY_NAME. Added generic overview."
    fi
    
    # Count prompt files
    PROMPT_COUNT=$(find "$CATEGORY" -type f -name "*.prompt" | wc -l)
    
    # Append all .prompt files
    PROMPT_FOUND=false
    for PROMPT in $(find "$CATEGORY" -type f -name "*.prompt" | sort); do
        PNAME=$(basename "$PROMPT")
        
        # Skip template file if it was accidentally copied into category
        if [[ "$PNAME" == "prompt.template.prompt" ]]; then
            continue
        fi
        
        echo "---" >> "$OUTFILE"
        echo "## \`$PNAME\`" >> "$OUTFILE"
        echo '```text' >> "$OUTFILE"
        cat "$PROMPT" >> "$OUTFILE"
        echo '```' >> "$OUTFILE"
        echo "" >> "$OUTFILE"
        
        PROMPT_FOUND=true
        total_prompts=$((total_prompts + 1))
    done
    
    # Add message if no prompt files found
    if [ "$PROMPT_FOUND" = false ]; then
        echo "---" >> "$OUTFILE"
        echo "## No prompts yet" >> "$OUTFILE"
        echo "This category doesn't have any prompt files yet. Feel free to contribute!" >> "$OUTFILE"
        echo "" >> "$OUTFILE"
        log_warning "No .prompt files found in $CATEGORY_NAME."
    else
        categories_with_prompts=$((categories_with_prompts + 1))
    fi
    
    # Add to navigation
    echo "  - $CATEGORY_TITLE: $CATEGORY_NAME.md" >> "$CONFIG_FILE"
done

# Add contributing guide if exists
if [ -f "CONTRIBUTING.md" ]; then
    cp "CONTRIBUTING.md" "$DOCS_DIR/contributing.md"
    echo "  - Contributing: contributing.md" >> "$CONFIG_FILE"
    log_info "Added contributing guide."
fi

# Update statistics in index.md
sed -i "s/Categories-10%2B-blue/Categories-$total_categories-blue/" "$DOCS_DIR/index.md"
sed -i "s/Prompts-50%2B-green/Prompts-$total_prompts-green/" "$DOCS_DIR/index.md"

log_success "Docs rebuilt successfully."
log_info "Generated $total_prompts prompts across $total_categories categories."
log_info "$categories_with_prompts categories contain prompts."

# Warn if less than half of categories have prompts
if [ $categories_with_prompts -lt $(($total_categories / 2)) ]; then
    log_warning "Less than half of your categories contain prompt files. Consider adding more prompts!"
fi
