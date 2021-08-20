#!/usr/bin/env bash

while read LINE
do
	FTP=$(echo "$LINE" | cut -f33)
	echo "Downloading $(echo \"$FTP\" | cut -d/ -f8)..."
	wget --no-clobber -P raw/fastq/ "$FTP"
done < raw/E-MTAB-2262.sdrf.txt
