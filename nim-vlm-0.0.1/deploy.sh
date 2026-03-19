#!/bin/bash
set -e
helm upgrade --install nim-vlm-0.0.1 . -n ai-factory --create-namespace
