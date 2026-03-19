#!/bin/bash
set -e
helm upgrade --install clickhouse-0.0.1 . -n ai-factory --create-namespace
