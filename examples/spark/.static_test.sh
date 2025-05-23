#!/bin/bash
set -euo pipefail

# Initialize empty vars (to simulate fresh env)
SPARK_EXECUTOR_MEMORY_GB=""
SPARK_EXECUTOR_MEMORY_OVERHEAD_GB=""
SPARK_WORKER_MEMORY_GB=""
SPARK_WORKER_CORES=""
SPARK_DRIVER_MEMORY_GB=""
SPARK_DRIVER_MEMORY_OVERHEAD_GB=""
SPARK_GC_OPTS=""

# Simulate output from suggest_cluster_config.sh
CONFIG_OUTPUT="
SPARK_EXECUTOR_MEMORY_GB=6
SPARK_EXECUTOR_MEMORY_OVERHEAD_GB=1
SPARK_WORKER_MEMORY_GB=7
SPARK_WORKER_CORES=2
SPARK_DRIVER_MEMORY_GB=4
SPARK_DRIVER_MEMORY_OVERHEAD_GB=0
SPARK_GC_OPTS=\"-XX:+UseParallelGC -XX:+UseParallelOldGC -Xms6g -Xmx6g\"
"

# Simulate eval
eval "$CONFIG_OUTPUT"

# Confirm values
echo "✅ Assigned Variables:"
echo "SPARK_EXECUTOR_MEMORY_GB = $SPARK_EXECUTOR_MEMORY_GB"
echo "SPARK_EXECUTOR_MEMORY_OVERHEAD_GB = $SPARK_EXECUTOR_MEMORY_OVERHEAD_GB"
echo "SPARK_WORKER_MEMORY_GB = $SPARK_WORKER_MEMORY_GB"
echo "SPARK_WORKER_CORES = $SPARK_WORKER_CORES"
echo "SPARK_DRIVER_MEMORY_GB = $SPARK_DRIVER_MEMORY_GB"
echo "SPARK_DRIVER_MEMORY_OVERHEAD_GB = $SPARK_DRIVER_MEMORY_OVERHEAD_GB"
echo "SPARK_GC_OPTS = $SPARK_GC_OPTS"

