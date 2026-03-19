#!/bin/bash
set -e
helm upgrade --install nvidia-blueprint-rag . -n ai-factory --create-namespace
