#!/bin/bash
set -e
helm upgrade --install nim-vlm . -n ai-factory --create-namespace
