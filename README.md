# ACG Development Tooling

Centralized tooling and documentation system for the ACG initiative, providing automated ticket documentation, PR summaries, and development workflow automation.

## 🚀 Quick Install

```bash
curl -sSL https://raw.githubusercontent.com/your-org/acg-development-tooling/main/install.sh | bash
```

## 📚 What's Included

- **Claude Commands**: AI-powered PR documentation and ticket analysis
- **Shell Scripts**: Automated git analysis and documentation generation  
- **Templates**: Consistent documentation formats
- **Configuration**: Standard Claude permissions and hooks

## 🛠️ Features

### 📋 Ticket Documentation
- Automated ticket analysis with `ticket_analyze TICKET-ID`
- Generate comprehensive documentation with `ticket_doc TICKET-ID`
- AI-powered PR summaries with `/generate-pr-summary`

### 🔧 Development Workflow  
- Git commit analysis and file change tracking
- API endpoint discovery and documentation
- Test file identification and analysis
- JIRA integration for ticket management

### ⚙️ Claude Integration
- Pre-configured permissions for development tasks
- Slash commands for common operations
- Hooks for security and validation

## 📖 Documentation

- [Installation Guide](docs/installation.md)
- [Usage Instructions](docs/usage.md)  
- [Integration Guide](docs/integration.md)
- [Examples](examples/)

## 🤝 Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for development guidelines.
