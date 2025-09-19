# Installation Guide

## Prerequisites

- Git repository with write access
- Claude Code CLI installed
- JIRA CLI (optional, for JIRA integration)
- GitHub CLI (optional, for PR operations)

## Installation Methods

### Method 1: Automated Script (Recommended)
```bash
curl -sSL https://raw.githubusercontent.com/your-org/acg-development-tooling/main/install.sh | bash
```

### Method 2: Manual Submodule
```bash
git submodule add https://github.com/your-org/acg-development-tooling.git .acg
git submodule update --init --recursive
ln -sf .acg/claude .claude
ln -sf .acg/ai ai
```

## Post-Installation

1. Configure JIRA/GitHub CLI if needed
