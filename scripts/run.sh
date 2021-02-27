#!/usr/bin/env bash

export DATA_ROOT=/home/lushun/dataset
export METIS_WORKER_0_HOST=23456
export METIS_WORKER_0_PORT=22
export METIS_TASK_INDEX=0
export ARNOLD_WORKER_NUM=16
export ARNOLD_WORKER_GPU=8
export ARNOLD_OUTPUT=/home/lushun/code/yet_another_mobilenet_series/output

source ./scripts/utils/setup.sh
source ./scripts/utils/export_data.sh
nohup bash ./scripts/utils/remote_run.sh $@
