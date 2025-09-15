# Define base image
ARG VARIANT=ubuntu
FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

# Update, upgrade, autoremove, and clean apt cache
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get autoremove -y \
    && apt-get clean