# OGX Demo Distribution

A demo distribution descriptor to be used with [LlamaChat](http://github.com/mcaimi/llamachat)
Can be made to work with the community OGX Operator on Openshift/K8s with minimal effort. Still not tested though.

## Build Stack

1. Create venv

```bash
$ uv venv -p <python environment> .venv
$ uv add ogx ogx-api
```

2. Build llama stack distribution

```bash
$ uv run ogx stack build --template starter --image-type venv --config llama-stack-config.yaml
```

3. Run Stack

```bash
$ uv run ogx stack run --image-type venv llama-stack-config.yaml
```


# TODO

- Proper build instructions
- Run via Podman
