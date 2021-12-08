#!/bin/bash

uuid=$(get_uuid)
echo "uuid: $uuid"

[[ $(type -t get_uuid) == function ]] && echo "function found" || echo "function not found"