# Base image with the latest Node.js (current or LTS)
FROM node:current-slim

# Update system packages and install required build tools
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
  git \
  python3 \
  make \
  g++ \
  && rm -rf /var/lib/apt/lists/*

# Install stencil-cli globally
RUN npm install -g @bigcommerce/stencil-cli

# Set working directory
WORKDIR /usr/src/app

# Expose the default stencil-cli port
EXPOSE 3000

# Default command (can be overridden at runtime)
CMD ["stencil"]
