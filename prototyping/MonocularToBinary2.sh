#!/bin/bash

vidFileL=$1
vidFileR=$2

ffmpeg -i $vidFileL -vf scale=1440:-1 outputL.mp4;
vidFileL="outputL.mp4"
ffmpeg -i $vidFileR -vf scale=1440:-1 outputR.mp4;
vidFileR="outputR.mp4"

mkdir image_0; mkdir image_1;

cp $vidFileL image_0/.;
cd image_0;
ffmpeg -i $vidFileL %06d.png;
rm $vidFileL;
cd ..;

cp $vidFileR image_1/.;
cd image_1;
ffmpeg -i $vidFileR %06d.png;
rm $vidFileR;
cd ..;

echo "Done generating folders."

cd image_0;
ffmpeg -i %06d.png -vf "crop=1340:ih:0:0" %06d.png;
cp 000001.png 000000.png;
cd ..;

echo "Done generating left camera."

cd image_1;
ffmpeg -i %06d.png -vf "crop=1340:ih:100:0" %06d.png
cp 000001.png 000000.png;
cd ..;

echo "Done generating right camera."

echo "Done!"
