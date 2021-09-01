#!/usr/bin/env bash

set -ex

WORKFLOW_URL=preprocessing/rna-seq-paired-end-workflow-cuff-only.wdl


cromwell run $WORKFLOW_URL \
	--inputs preprocessing/inputs-cuff-only.json \
	--options preprocessing/cromwell-options.json
