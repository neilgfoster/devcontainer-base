#!/bin/bash

# Error handling
set -e

# Echo messages to the user
echo
echo -e "${GREEN}Setup complete! Note that you may need to set your Git username and email if you are committing changes within this devcontainer.${NC}"
echo -e "${GREEN}You can do this by running the following commands:${NC}"
echo -e "${YELLOW}git config --global user.name 'Your Name'${NC}"
echo -e "${YELLOW}git config --global user.email 'you@example.com'${NC}"
echo