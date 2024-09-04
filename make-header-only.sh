#!/usr/bin/env bash

HEADER_ONLY_DIR="header-only"

mkdir -p "$HEADER_ONLY_DIR"
printf '%s\n\n// INCLUDE SunRise.cpp BEGIN\n\n%s\n\n// INCLUDE SunRise.cpp END\n\n#endif' "$(head -n -1 SunRise.h)" "$(sed '/#include "SunRise.h"/d' SunRise.cpp)" > "$HEADER_ONLY_DIR/SunRise.h"
