#!/bin/bash

# Error handling
set -e

# Echo messages to the user
echo
echo -e "${GREEN}Setup complete!${NC}"

# Check if git username and email are set
GIT_NAME=$(git config --global user.name)
GIT_EMAIL=$(git config --global user.email)
if [[ -z "$GIT_NAME" || -z "$GIT_EMAIL" ]]; then
  echo -e "${GREEN}Note that you may need to set your Git username and email if you are committing changes within this devcontainer.${NC}"
  echo -e "${GREEN}You can do this by running the following commands:${NC}"
  echo -e "${YELLOW}git config --global user.name 'Your Name'${NC}"
  echo -e "${YELLOW}git config --global user.email 'you@example.com'${NC}"
fi
echo