#!/bin/bash
set -x
CHART=${__DS_PATH__}
CWD=$(dirname $(readlink -f $0))
${CWD}/../.bin/helm template ${CWD}/../${CHART} 