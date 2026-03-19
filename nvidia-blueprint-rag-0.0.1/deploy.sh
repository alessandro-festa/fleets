#!/bin/bash
set -e
helm upgrade --install nvidia-blueprint-rag-0.0.1 . -n ai-factory --create-namespace
