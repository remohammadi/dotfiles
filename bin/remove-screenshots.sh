#!/bin/bash
/usr/local/bin/find /Users/ankushagarwal/Documents/ScreenShots  -type f -mmin +2000 -print0 | /usr/local/bin/xargs -0 --no-run-if-empty rm
