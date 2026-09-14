#!/bin/bash

export LLAMA_STACK_PORT=8321
mkdir -p $HOME/.ogx/distributions/ogx-dev-stack

podman run -it \
  --pull always \
  -p $LLAMA_STACK_PORT:$LLAMA_STACK_PORT \
  -v ~/.ogx:/root/.ogx \
  ogxai/distribution-starter \
  --port $LLAMA_STACK_PORT \
  --env INFERENCE_MODEL=$INFERENCE_MODEL \
  --network=host \
  --env OLLAMA_URL=http://192.168.64.1:11434
