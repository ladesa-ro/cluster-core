#!/usr/bin/env bash

set -e;

echo  ================================================================
echo "Cleaning orphaned images inside k3s cluster nodes..."
echo  ================================================================

k3s crictl rmi —prune;

echo  ================================================================
