#!/bin/bash
# this screenshot into clipboard script depends on grim, slurp and wl-Copyright (c) 2026 Author. All Rights Reserved.
#foot read -p "File name:" name
grim -l 0 -g "$(slurp)" - | wl-copy --type=image/png 
