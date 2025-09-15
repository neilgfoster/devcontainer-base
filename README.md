# devcontainer-base

This repository provides a comprehensive base template for containerized development environments using VS Code Dev Containers. It is designed for rapid setup, modular configuration, and easy extension across multiple projects.

## Purpose

To offer a reusable, minimal, and extensible starting point for development containers, including:
- Standardized devcontainer configuration
- Automated setup and finalization scripts
- Recommended VS Code extensions and settings
- Git configuration reminders

## Repository Structure

- `.devcontainer/`
  - `Dockerfile`: Defines the base image (Ubuntu) and system-level dependencies. Starts from the official VS Code devcontainers base and ensures the system is up-to-date.
  - `devcontainer.json`: Specifies container features (git, git-lfs), VS Code extensions, editor settings, and the post-creation setup command. Sets resource requirements and environment variables.
- `.setup/`
  - `setup.sh`: Main entrypoint for environment setup. Handles argument parsing, devcontainer checks, and orchestrates execution of numbered scripts in the `scripts/` subfolder.
  - `scripts/`
    - `000-init.sh`: Initialization script, executed first. Reserved for any pre-setup logic.
    - `999-finalise.sh`: Finalization script, executed last. Displays a completion message and reminds users to set their global git username/email if not configured.
- `.github/CODEOWNERS`: Sets repository code ownership (defaults to @neilgfoster).

## Key Features

- **Dev Container Configuration**
  - Pre-configured for VS Code, with recommended extensions for containers, YAML, JSON, GitHub Copilot, GitLens, and more.
  - Custom editor settings for formatting and file associations.
  - Resource requirements for host system (CPUs, memory, storage).
- **Automated Setup**
  - The `.setup/setup.sh` script runs after container creation, executing all scripts in `.setup/scripts/` that follow the numeric prefix convention for modular setup and finalization.
  - Supports argument parsing for organization and repository cloning (if used outside a devcontainer).
- **Git Reminders**
  - On completion, the setup reminds users to set their global git username/email if not already configured, with example commands.
- **Extensible**
  - Add additional scripts to `.setup/scripts/` using the numeric prefix convention for custom setup steps. Scripts are executed in order.

## Usage

1. Clone this repository.
2. Open in VS Code and reopen in container when prompted.
3. The setup scripts will run automatically, preparing your environment.
4. Customize by adding scripts or modifying the Dockerfile/devcontainer.json as needed.

## Example Workflow

- On first open in VS Code, the devcontainer is built using the provided Dockerfile.
- The container installs recommended extensions and applies editor settings.
- The `.setup/setup.sh` script runs, executing all numbered scripts in `.setup/scripts/`.
- The finalization script displays a completion message and git configuration reminders.

## Maintainer

@neilgfoster