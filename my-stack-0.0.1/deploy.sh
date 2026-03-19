#!/bin/bash
set -e
helm upgrade --install my-stack-0.0.1 . -n ai-factory --create-namespace
