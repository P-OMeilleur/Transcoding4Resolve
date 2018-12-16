# Transcoding4Resolve

This is a script to transcode video file for editing in Davinci Resolve for Linux

## Getting Started
### Prerequisites

Installing FFmpeg

```
sudo apt install ffmpeg
```

### Executable

Make the script executable

```
chmod +x Transcoding4Resolve.sh
```

## Running the script
At first you need to import all your video in
the same folder as the script.

### Start the script
In terminal use the command
```
./Transcoding4Resolve.sh
```

### Input parameter

The script require the video extension without the period.
Be carefull, the script is case sensitive.

Example
```
1: What is video extension you want do transcode : mp4
```

The script require the video resolution in this format **widthxheight**

Example
```
2: What is the resolution to transcode : 1920x1080
```

### Output files
All of your files should be in the folder named **/output**
with the same name an the .mov extension
