#!/bin/bash


diff  --unchanged-line-format="" --new-line-format="" --old-line-format="{ \"filename\": \"$1\", \"line\": %dn, \"messagetype\": \"warning\", \"message\": \"Formatting does not meet standards, See .clang_format and apply formatting.\", \"tool\": \"format-checker\" }%c'\012'" "$1" <(clang-format-3.9 "$1")

# diff  "$1" <(clang-format-3.9 "$1")

