#!/usr/bin/env bash

set -ex

WORKFLOW_URL="https://gitlab.com/intelliseq/workflows/-/raw/dev/src/main/wdl/pipelines/rna-seq-paired-end/latest/rna-seq-paired-end.wdl" 


cromwell run $WORKFLOW_URL \
	--inputs preprocessing/inputs.json \
	--options preprocessing/cromwell-options.json
