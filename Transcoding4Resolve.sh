#!/bin/bash
clear
echo "--------------------Transcoding4Resolve--------------------"
echo ""
read -p "1: What is video extension you want do transcode : " extension
echo ""
read -p "2: What is the resolution to transcode : " resolution

mkdir -p transcode
mkdir -p raw


for i in *.$extension;
  do name=`echo $i | cut -d'.' -f1`;
  echo $name;
  ffmpeg -i "$i" -vcodec dnxhd -acodec pcm_s16le -s $resolution -b:v 36M -pix_fmt yuv422p -f mov transcode/${name}.mov
  mv -i $i raw
done
