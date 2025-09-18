#!/bin/bash
# ACG Development Tooling Installation Script

REPO_ROOT=$(pwd)
ACG_TOOLING_URL="https://github.com/loy-misquith-frequence/acg-development-tooling.git"

echo "🚀 Installing ACG Development Tooling..."

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "❌ Not in a git repository. Please run from project root."
    exit 1
fi

# Install as submodule
if [ ! -d ".acg" ]; then
    echo "📦 Adding ACG tooling as submodule..."
    git submodule add $ACG_TOOLING_URL .acg
    git submodule update --init --recursive
else
    echo "🔄 Updating existing ACG tooling..."
    git submodule update --remote .acg
fi

# Create symlinks if they don't exist
echo "🔗 Creating symlinks..."
[ ! -e ".claude" ] && ln -sf .acg/claude .claude && echo "  ✅ .claude -> .acg/claude"
[ ! -e "ai" ] && ln -sf .acg/ai ai && echo "  ✅ ai -> .acg/ai"

# Add to .gitignore if needed
if ! grep -q "^\.acg$" .gitignore 2>/dev/null; then
    echo ".acg" >> .gitignore
    echo "📝 Added .acg to .gitignore"
fi

echo ""
echo "✅ ACG tooling installed successfully!"
echo ""
echo "📚 Quick Start:"
echo ""
echo "🎯 Claude Commands Available:"
echo "  /generate-pr-summary"
echo "  /ticket-analyze"
echo ""
echo "📖 Documentation: .acg/docs/"
echo "📋 Examples: .acg/examples/"
