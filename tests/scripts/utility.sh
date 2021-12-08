#!/bin/bash

# Execute a utility function to make sure they work
uuid=$(get_uuid)
echo "uuid: $uuid"

# Check all utility functions are available
fn_exists() { declare -F "$1" > /dev/null; }

utility_functions=( "get_integration_name" "get_uuid"  "get_resource_name"
"get_resource_names" "find_resource_variable" "find_step_configuration_value"
"bump_semver" "read_json" "decrypt_file" "encrypt_file" "decrypt_string"
"encrypt_string" "compare_git" "update_commit_status" "replicate_resource"
"url_encode" "send_notification" "_notify_pagerduty" "_notify_email"
"_notify_newrelic" "_notify_airbrake" "_notify_jira" "validate_artifact"
"_validate_buildinfo" "_post_curl" "_get_curl" "replace_envs" "write_output"
"retry_command" "save_tests" "save_artifact_info" "save_xray_results_url"
"set_pipefail" "restore_pipefail" "add_cache_files" "restore_cache_files"
"add_run_variables" "set_step_var" "get_step_var" "add_pipeline_variables"
"export_run_variables" "export_pipeline_variables" "add_run_files"
"restore_run_files" "get_run_state_location" "add_pipeline_files"
"restore_pipeline_files" "configure_jfrog_cli" "use_jfrog_cli"
"cleanup_jfrog_cli" "set_payload" "start_group" "stop_group" "execute_command"
"on_error" )

for func_name in "${utility_functions[@]}"
do
  fn_exists $func_name && echo "$func_name found" || (echo "$func_name not found" && exit 99)
done
