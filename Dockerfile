# syntax=docker/dockerfile:1

ARG OPENCLAW_VERSION=latest
FROM ghcr.io/openclaw/openclaw:${OPENCLAW_VERSION}

ENV OPENCLAW_DISABLE_BONJOUR=1
