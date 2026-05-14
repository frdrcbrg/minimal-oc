# minimal-oc

Minimal Docker Compose setup for [OpenClaw](https://github.com/openclaw/openclaw), using the official image directly.

## Deploy

```bash
mkdir -p ~/minimal-oc && cd ~/minimal-oc

# Get compose file
curl -fsSL https://raw.githubusercontent.com/frdrcbrg/minimal-oc/main/compose.yaml -o compose.yaml

# Create data directory (permissions are fixed automatically on startup)
mkdir -p data

# Create .env
cat <<EOF > .env
OPENCLAW_DISABLE_BONJOUR=1
OPENCLAW_GATEWAY_TOKEN=your-token-here
TZ=Europe/Berlin
EOF

# Pull and start
docker compose pull
docker compose up -d
```

## Update

```bash
cd ~/minimal-oc
docker compose pull
docker compose up -d
```

## Volumes

| Volume | Zweck |
|--------|-------|
| `./data` | Persistente OpenClaw-Daten |
| `./data/linuxbrew` | Homebrew-Pakete überleben Neustarts |
