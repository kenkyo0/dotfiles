#!/bin/bash
# this screenshot into clipboard script depends on grim, slurp and wl-copy
grim -l 0 -g "$(slurp)" - | wl-copy --type=image/png 
