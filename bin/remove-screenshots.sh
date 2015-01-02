#!/bin/bash
/usr/local/bin/find /Users/ankushagarwal/Documents/ScreenShots  -type f -mmin +2000 -print0 | /usr/local/bin/xargs -0 --no-run-if-empty rm
mv /Users/ankushagarwal/Desktop/*.png /Users/ankushagarwal/.Trash
mv /Users/ankushagarwal/Desktop/*.jpg /Users/ankushagarwal/.Trash
mv /Users/ankushagarwal/Desktop/*jpeg /Users/ankushagarwal/.Trash
mv /Users/ankushagarwal/Desktop/*JPG /Users/ankushagarwal/.Trash
mv /Users/ankushagarwal/Desktop/*JPEG /Users/ankushagarwal/.Trash
mv /Users/ankushagarwal/Downloads/*.png /Users/ankushagarwal/.Trash
mv /Users/ankushagarwal/Downloads/*.jpg /Users/ankushagarwal/.Trash
mv /Users/ankushagarwal/Downloads/*jpeg /Users/ankushagarwal/.Trash
mv /Users/ankushagarwal/Downloads/*JPG /Users/ankushagarwal/.Trash
mv /Users/ankushagarwal/Downloads/*JPEG /Users/ankushagarwal/.Trash
exit 0