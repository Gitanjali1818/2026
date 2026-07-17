#!/bin/bash

set -euo pipefail

if [ $# -ne 2 ];then
	echo "usage: $0 <source_dir> <backup_destination>"
       exit 1
fi

	SOURCE_DIR="$1"
	DEST_DIR="$2"
	
#verify source dir

if [ ! -d "$SOURCE_DIR" ]; then
	echo "Error: Source dir does not exist"
       exit 1
fi

#create destination if missing

mkdir -p "$DEST_DIR"

 TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
 ARCHIVE_NAME="backup-$TIMESTAMP.tar.gz"

 tar -czf "$DEST_DIR/$ARCHIVE_NAME" "$SOURCE_DIR"

#verify archieve creation

if [ -f "$DEST_DIR/$ARCHIVE_NAME" ]; then

	size=$( du -h "$DEST_DIR/$ARCHIVE_NAME" | cut -f1)

	echo "backup created successfully"
	echo "archive: $ARCHIVE_NAME"
	echo "size: $size"
else
	echo "backup creation failed"
	exit 1
fi

#Delete backup older than 14 days

find "$DEST_DIR" -type f -name "backup-*.tar.gz" -mtime +14 -delete

