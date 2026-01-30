FROM ghcr.io/logseq/logseq-webapp:latest

# Add healthcheck: checks if server responds
HEALTHCHECK --interval=30s --timeout=10s --start-period=40s --retries=3 \
  CMD curl -f http://localhost:3000 || exit 1
