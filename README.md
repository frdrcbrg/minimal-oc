# minimal-oc

Thin wrapper around the official [OpenClaw](https://github.com/openclaw/openclaw) Docker image. GitHub Actions rebuilds and publishes to GHCR every 6 hours.

## Deploy on Hostinger VPS

```bash
mkdir -p ~/minimal-oc && cd ~/minimal-oc

# Get compose file
curl -fsSL https://raw.githubusercontent.com/frdrcbrg/minimal-oc/main/compose.yaml -o compose.yaml

# Create data directories (UID 1000 = node user inside container)
mkdir -p data auth-profile-secrets
chown 1000:1000 data auth-profile-secrets

# Create .env
cp .env.example .env   # or create manually
# Edit .env and set a strong OPENCLAW_GATEWAY_TOKEN

# Pull and start
docker compose pull
docker compose up -d
```

## Update after rebuild

The VPS must pull the new image after each rebuild:

```bash
cd ~/minimal-oc
docker compose pull
docker compose up -d
```

Or set up a cron/webhook to automate this.
