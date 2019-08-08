#!/bin/bash

vidFile=$1

ffmpeg -i $vidFile -vf scale=1440:-1 output.mp4;
#cp output.mp4 $vidFile;
#rm output.mp4;
vidFile"output.mp4"

mkdir image_0; mkdir image_1;

cp $vidFile image_0/.;
cd image_0;
ffmpeg -i $vidFile %06d.png -hide_banner;
rm $vidFile;
cd ..;

cp $vidFile image_1/.;
cd image_1;
ffmpeg -i $vidFile %06d.png -hide_banner
rm $vidFile;
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
