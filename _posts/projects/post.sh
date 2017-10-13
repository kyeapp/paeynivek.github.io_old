#!/bin/sh
#USAGE post.sh "[title]"

POSTDATE=`date +%F\ %T\ %z`
FILEDATE=`date +%F`

FILENAME="$FILEDATE $@.md"
FILE=${FILENAME// /-}

if [ -f $FILE ]; then
	echo "File $FILE exists."
	exit
fi

cat > $FILE << EOF
---
layout: single
title:  "$@"
date:   $POSTDATE
categories: projects
---

