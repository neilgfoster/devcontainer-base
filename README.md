# devcontainer-base
This is my base template repository for my devcontainer setup. Follows the same pattern as my other development repositories.

## Whats Included?

### Code Owners
A CODEOWNERS file is included to define the code owners for the repository, which defaults to myself. This helps in managing code reviews and approvals.

### Dev Container Configuration
The `.devcontainer` folder contains the configuration files for setting up a development container. This includes a `Dockerfile` and a `devcontainer.json` file to define the environment.

### Setup Scripts
Setup scripts are included to automate the setup of the dev container. Executed post-creation, these scripts ensure that the environment is configured correctly.