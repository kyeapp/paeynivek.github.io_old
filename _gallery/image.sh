#!/bin/sh
#USAGE post.sh "[title]"

POSTDATE=`date +%F\ %T\ %z`
NAME=$1
FILE="$NAME.md"
echo "$FILE"

if [ -f $FILE ]; then
	echo "File $FILE exists."
	exit
fi

cat > $FILE << EOF
---
image_path: /assets/images/prints/$NAME.jpg
title:  "$NAME"
date:   $POSTDATE
---

