#!/bin/bash
/usr/local/bin/find /Users/ankushagarwal/Documents/ScreenShots  -type f -mmin +2000 | /usr/local/bin/xargs --no-run-if-empty rm
