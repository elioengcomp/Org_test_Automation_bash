#!/bin/bash

# Execute a utility function to make sure they work
uuid=$(get_uuid)
echo "uuid: $uuid"

# Check all utility functions are available
fn_exists() { declare -F "$1" > /dev/null; }

source utility_function_names.sh

for func_name in "${utility_functions[@]}"
do
  fn_exists $func_name && echo "$func_name found" || (echo "$func_name not found" && exit 99)
done
