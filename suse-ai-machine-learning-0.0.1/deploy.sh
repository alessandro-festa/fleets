#!/bin/bash
set -e
helm upgrade --install suse-ai-machine-learning-0.0.1 . -n ai-factory --create-namespace
