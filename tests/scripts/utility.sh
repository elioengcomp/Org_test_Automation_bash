#!/bin/bash

# Execute a utility function to make sure they work
uuid=$(get_uuid)
echo "uuid: $uuid"

# Check all utility functions are available
fn_exists() { declare -F "$1" > /dev/null; }

func_name="get_uuid"
fn_exists $func_name && echo "$func_name found" || echo "$func_name not found"

func_name="get_uuid2"
fn_exists $func_name && echo "$func_name found" || echo "$func_name not found"