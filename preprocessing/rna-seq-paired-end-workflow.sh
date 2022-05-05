#!/usr/bin/env bash

set -ex

rev=2d06f7feea5511dd578d356194fa26a90754eaf0
WORKFLOW_URL="https://gitlab.com/intelliseq/workflows/-/raw/${rev}\
/src/main/wdl/pipelines/rna-seq-paired-end/latest/rna-seq-paired-end.wdl"


cromwell run $WORKFLOW_URL \
	--inputs preprocessing/inputs.json \
	--options preprocessing/cromwell-options.json
