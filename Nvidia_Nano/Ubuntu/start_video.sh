#!/bin/sh
# start http video streaming
export GST_DEBUG="*:2"
$HOME/GitHub/http-launch/out/bin/http-launch 1234 v4l2src device=/dev/video0 ! "video/x-raw,width=640,height=480,framerate=15/1" ! jpegenc ! multipartmux streamable=true name=stream
