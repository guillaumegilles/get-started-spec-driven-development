<!-- SPECKIT START -->
For additional context about technologies to be used, project structure,
shell commands, and other important information, read the current plan
<!-- SPECKIT END -->

---

# Copilot Instructions

## Project Overview

Get Started with Spec-Driven Development is a ready-to-use GitHub Codespace for learning spec-driven development with GitHub Copilot. It provides a pre-configured environment for following the Microsoft Learn lab on GitHub Dev Kit.

## Tech Stack

- **Language**: .NET (C#), Python 3.12
- **Runtime**: .NET SDK 10
- **Database**: SQL Server 2022 (Docker), SQLite
- **Tooling**: uv (Python package manager), specify-cli (GitHub Spec Kit)
- **CI/CD**: GitHub Actions

## Project Structure

```
get-started-sdd/
├── .devcontainer/    # Codespace configuration
├── .github/          # GitHub templates, workflows, agents
├── .specify/         # Spec Kit configuration
└── ...
```

## Code Conventions

### General
- Prefer clarity over cleverness — write code that is easy to read and review.
- Keep functions small and focused on a single responsibility.
- Avoid premature optimisation; profile before optimising.

### Naming
- Use descriptive names; avoid single-letter variables outside of loop counters.
- Use `PascalCase` for C# types, `camelCase` for C# locals/params; `snake_case` for Python

### Comments
- Only comment code that needs clarification — avoid restating what the code does.
- Use `TODO:` and `FIXME:` prefixes for inline notes.

### Error Handling
- Always handle errors explicitly; never silently swallow exceptions.
- Surface meaningful error messages to the caller.

### Testing
- Write tests alongside new features; target meaningful coverage, not 100%.
- Follow Arrange / Act / Assert structure in test bodies.

## Commit & Branch Conventions

Follow **Conventional Commits**: `<type>(<scope>): <subject>`

| Type | When to use |
|---|---|
| `feat` | New feature |
| `fix` | Bug fix |
| `docs` | Documentation only |
| `refactor` | Code change with no behaviour change |
| `test` | Adding or updating tests |
| `chore` / `ci` | Build, tooling, CI changes |

Branch naming: `feature/`, `fix/`, `docs/`, `chore/`, `hotfix/` prefixes.
See [CONTRIBUTING.md](../CONTRIBUTING.md) for full details.

## What Copilot Should Avoid

- Do **not** add dependencies without checking the existing stack.
- Do **not** disable linting rules inline unless strictly necessary.
- Do **not** commit secrets, credentials, or `.env` files.
- Do **not** generate placeholder/stub implementations without a `TODO:` comment.

