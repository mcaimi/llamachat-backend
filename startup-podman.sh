#!/bin/bash

export LLAMA_STACK_PORT=8321
mkdir -p $HOME/.llama/distributions/ollama

podman run -it \
  --pull always \
  -p $LLAMA_STACK_PORT:$LLAMA_STACK_PORT \
  -v ~/.llama:/root/.llama \
  llamastack/distribution-starter \
  --port $LLAMA_STACK_PORT \
  --env INFERENCE_MODEL=$INFERENCE_MODEL \
  --network=host \
  --env OLLAMA_URL=http://192.168.64.1:11434
