#!/bin/bash

for file in lib/*.o_shipped; do
   ln -sf "$(basename "$file")" "lib/$(basename "${file%.o_shipped}").o"
done
