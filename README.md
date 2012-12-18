mtn (Movie thumbnailer)
===

Description
===

movie thumbnailer (mtn) -- saves thumbnails (screenshots) of movie or video files to jpeg files. It uses FFmpeg's libavcodec as its engine, so it supports all popular codecs, e.g. divx h264 mpeg1 mpeg2 mp4 vc1 wmv xvid, and formats, e.g. .3gp .avi .dat .mkv .wmv. mtn is open source software. It should run on all operating systems which have gcc, FFmpeg, and GD, for example, Linux and Windows.

mtn works similar to "mplayer -benchmark -nosound -quiet -zoom -vf scale=420:-3,tile=2:2 -vo jpeg:outdir=. -sstep 60 file.avi". but sstep and framestep options didn't work very well for me.

mtn comes with ABSOLUTELY NO WARRANTY. This is free software, and you are welcome to redistribute it under certain conditions; for details see file gpl-2.0.txt.

For project information, please visit SourceForge project summary page : http://sourceforge.net/projects/moviethumbnail

Version
===

Mtn builded the 2012-12-18 with FFMPEG 2012-11-25 and GD 2.0.34

Compiled with : Lavc54.77.100 | Lavf54.37.100 | Lavu52.9.100 | SwS2.1.102 | GD2.0.34 | MinGW

Usage
===

```plain
usage:
  mtn [options] file_or_dir1 [file_or_dir2] ... [file_or_dirn]
options: (and default values)
  -a aspect_ratio : override input file's display aspect ratio
  -b 0.80 : skip if % blank is higher; 0:skip all 1:skip really blank >1:off
  -B 0.0 : omit this seconds from the beginning
  -c 3 : # of column
  -C -1 : cut movie and thumbnails not more than the specified seconds; <=0:off
  -D 12 : edge detection; 0:off >0:on; higher detects more; try -D4 -D6 or -D8
  -E 0.0 : omit this seconds at the end
  -f tahomabd.ttf : font file; use absolute path if not in usual places
  -F RRGGBB:size[:font:RRGGBB:RRGGBB:size] : font format [time is optional]
     info_color:info_size[:time_font:time_color:time_shadow:time_size]
  -g 0 : gap between each shot
  -h 150 : minimum height of each shot; will reduce # of column to fit
  -i : info text off
  -I : save individual shots too
  -j 90 : jpeg quality
  -k RRGGBB : background color (in hex)
  -L info_location[:time_location] : location of text
     1=lower left, 2=lower right, 3=upper right, 4=upper left
  -n : run at normal priority
  -N info_suffix : save info text to a file with suffix
  -o _s.jpg : output suffix
  -O directory : save output files in the specified directory
  -p : pause before exiting; default on in win32
  -P : dont pause before exiting; override -p
  -r 0 : # of rows; >0:override -s
  -s 120 : time step between each shot
  -t : time stamp off
  -T text : add text above output image
  -v : verbose mode (debug)
  -w 1024 : width of output image; 0:column * movie width
  -W : dont overwrite existing files, i.e. update mode
  -z : always use seek mode
  -Z : always use non-seek mode -- slower but more accurate timing
examples:
  to save thumbnails to file infile_s.jpg with default options:
    mtn infile.avi
  to change time step to 65 seconds & change total width to 900:
    mtn -s 65 -w 900 infile.avi
  to step evenly to get 3 columns x 10 rows:
    mtn -c 3 -r 10 infile.avi
  to save output files to writeable directory:
    mtn -O writeable /read/only/dir/infile.avi
  to get 2 columns in original movie size:
    mtn -c 2 -w 0 infile.avi
  to skip uninteresting shots, try:
    mtn -D 4 infile.avi
`````

Gui Project ?
===

A gui named "Thumbnail me" is available at http://www.thumbnailme.com.

License
===

GNU General Public License, version 2 (GPLv2)

```plain
This program is free software; you can redistribute it and/or modify it under the terms of the 
GNU General Public License as published by the Free Software Foundation; either version 2 of the License,
or (at your option) any later version.
This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU General Public License for more details.
```

Support & Contact:
===

mtn is developed by tuit (but not maintained); though most of its magic is done by FFmpeg libraries.
