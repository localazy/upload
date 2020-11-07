#!/bin/bash

COMMAND="localazy upload"

if [ ! -z "$INPUT_CONFIG_FILE" ]; then
  COMMAND="$COMMAND -c $INPUT_CONFIG_FILE"
fi

if [ ! -z "$INPUT_KEY_FILE" ]; then
  COMMAND="$COMMAND -k $INPUT_KEY_FILE"
fi

if [ ! -z "$INPUT_READ_KEY" ]; then
  COMMAND="$COMMAND -r $INPUT_READ_KEY"
fi

if [ ! -z "$INPUT_WRITE_KEY" ]; then
  COMMAND="$COMMAND -w $INPUT_WRITE_KEY"
fi

if [ ! -z "$INPUT_APP_VERSION" ]; then
  COMMAND="$COMMAND -v $INPUT_APP_VERSION"
fi

if [ ! -z "$INPUT_FORCE" ]; then
  COMMAND="$COMMAND -f"
fi

if [ ! -z "$INPUT_GROUPS" ]; then
  COMMAND="$COMMAND $INPUT_GROUPS"
fi

if [ ! -z "$INPUT_WORKDIR" ]; then
  cd $INPUT_WORKDIR
fi

$COMMAND
