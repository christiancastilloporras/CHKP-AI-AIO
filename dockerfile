# Use the official Node.js runtime as the base image
FROM node:lts-alpine

# ENV for runtime configuration
ENV MCP_SRV=quantum-management-mcp

# Set the working directory inside the container
WORKDIR /mcp

# Expose the port your app runs on (adjust as needed)
EXPOSE 3000

# Health check - replace 'your-app-process' with your actual process name
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:3000/health || exit 1

# Run the npx command (replace with your actual command)
CMD ["sh", "-c", "npx -y @chkp/${MCP_SRV} --transport http --transport-port 3000"]