#!/bin/bash
clear
echo "--------------------Transcoding4Resolve--------------------"
echo ""
read -p "1: What is video extension you want do transcode : " extension

mkdir -p transcoded
mkdir -p raw


for i in *.$extension;
  do name=`echo $i | cut -d'.' -f1`;
  echo $name;
  ffmpeg -i "$i" -vcodec dnxhd -acodec pcm_s16le -b:v 36M -pix_fmt yuv422p -f mov transcoded/${name}.mov
  mv -i $i raw
done
