#!/bin/bash
PPI=600
WIDTH=2400
if [ "$#" -ne 1 ]
then
	echo "Invalid arguments"
	exit 1
fi

echo ":: converting $1 (PPI: ${PPI}; Width: ${WIDTH}px)..."
convert -density $PPI -units pixelsperinch $1 .tmp-img.jpg
convert -resize ${WIDTH}x .tmp-img.jpg $1
rm .tmp-img.jpg > /dev/null
