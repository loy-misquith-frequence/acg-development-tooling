# Backend API Development Reference

## Architecture Overview
```
Frontend (Brahmastra) → Attributes Platform → Frequence Platform + Integrations
```

## Repository Structure
```
app/Http/Controllers/     # Thin API controllers
app/Services/            # Business logic + external API calls
app/Repositories/        # Data access layer
app/Http/Helpers/API/    # External API helpers
```

This document provides architectural context. For development patterns, see the AI context files in `ai/context/by-topic/`.