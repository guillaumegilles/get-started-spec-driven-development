# Get Started with Spec Driven Development (SDD)

In this exercise, you learn how to use the GitHub Spec Kit to develop a new greenfield application. 


Your lab environment must include the following resources:

- [x] Git version 2.48 or later.
- [x] The .NET SDK version 8.0 or later.
- [ ] Access to a GitHub account with GitHub Copilot enabled.
- [ ] Visual Studio Code with the C# Dev Kit and GitHub Copilot Chat extensions.
- [ ] SQL Server LocalDB or SQLite.
    Connexion disponible sur localhost:1433 avec credentials:
    Utilisateur: sa
    Mot de passe: LabPassw0rd!2026
    = pour tester: `docker ps --filter name=sql-localdb-lab`
- [x] Python version 3.11 or later.
- [x] The uv package manager.


---

## Exercise scenario

You’re a software developer working for a consulting firm. Your firm is moving to a spec-driven development methodology using GitHub Spec Kit and GitHub Copilot in Visual Studio Code. You’re asked to start using SDD and GitHub Spec Kit as soon as possible.

One of your clients, Contoso Corporation, needs you to develop an initial MVP version for an RSS feed reader app. Contoso stakeholders documented the project goals, initial features, and technical requirements for the app. You’ll use the stakeholder documents to generate the constitution, spec, plan, and tasks documents, then implement the initial MVP version of the application. Contoso has indicated that additional features will be requested after initial sign-off.

Implementing the SDD methodology with GitHub Spec Kit ensures that the MVP app is delivered quickly, that it meets stakeholder requirements, and that new features can be rolled out seamlessly when needed.

This exercise includes the following tasks:

- Create a project folder and initialize GitHub Spec Kit.
- Generate the constitution using stakeholder documentation.
- Generate the spec.md file using stakeholder documentation.
- Generate the plan.md file using stakeholder documentation and spec.md.
- Generate the tasks.md file using the spec.md, plan.md, and constitution.md.
- Implement the tasks required for an MVP application.

## Initialize GitHub Spec Kit

The Specify CLI is used to initialize GitHub Spec Kit in a project folder. GitHub Spec Kit uses the project folder to store configuration files, templates, scripts, and agents that support the spec-driven development workflows.

- On Windows:

```bash
specify init --here --ai copilot --script ps
```

- ON MacOS or Linux

```bash
specify init --here --ai copilot --script sh
```
