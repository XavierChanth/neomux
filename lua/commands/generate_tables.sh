#!/bin/bash

# tmux version: (tmux -V) "tmux 3.5a"
script_dir="$(dirname -- "$(readlink -f -- "$0")")"

generate_named_usage_table() {
  local usage_named=()
  local handle_next=false
  usage=$(tmux list-commands -F '#{command_list_usage}')
  IFS=$'\n' # iterate over lines
  for line in $usage; do
    # normalize input
    IFS=$' '
    line=$(sed -e 's/\]\[/\] \[/g' <<<$line)
    for part in $line; do
      if handle_next; then
        usage_named+=${part::-1} # all but last character
      fi

      handle_next=false
      # has opening brace but missing closing brace, must be named arg
      if [ "${part:0:1}" = "[" ] && ! [ "${part:-1}" = "]" ]; then
        handle_next=true
      fi
    done
  done
  # TODO: generate usage named in a lua table
}

generate_command_table() {
  echo "-- GENERATED FILE DO NOT MODIFY DIRECTLY"
  echo ""
  echo "M = {"

  # At time of writing this, none of the output in list-commands contains parens
  # so it is a safe delimiter (if you format properly)
  # Also, this must be parsed as one, some commands don't have alias or usage
  commands=$(tmux list-commands -F '#{command_list_name})#{command_list_alias})#{command_list_usage}')

  IFS=$'\n' # iterate over lines
  for command in $commands; do
    name=$(cut -d ')' -f1 <<<$command)
    alias=$(cut -d ')' -f2 <<<$command)
    usage=$(cut -d ')' -f3 <<<$command)
    echo "  [\"$name\"] = {"
    echo "    alias = \"$alias\","
    echo "    usage = \"$usage\","
    # TODO: parse usage to a table
    # - Must point to named table if it's a named argument
    echo "  }," # close inner table
  done

  echo "}" # close M table
  echo
  echo "return M"
  echo
}

main() {
  # generate_commands >"$script_dir/generated_command_table.lua"
  true
}
# main

# generate_commands
generate_usage
