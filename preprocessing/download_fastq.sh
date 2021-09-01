#!/usr/bin/env bash

FASTQ_DIR=raw/fastq/

while read LINE
do
	FTP=$(echo "$LINE" | cut -f33)
	echo "Downloading $(echo $FTP | cut -d/ -f8)..."
	wget --no-clobber -P $FASTQ_DIR $FTP
done < raw/E-MTAB-2262.sdrf.txt

while read LINE
do
	FTP=$(echo "$LINE" | cut -f33)
	FILE=$(echo $FTP | cut -d/ -f8)
	gzip -vt $FASTQ_DIR/$FILE
done < raw/E-MTAB-2262.sdrf.txt
