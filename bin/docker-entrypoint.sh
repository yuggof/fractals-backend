#!/bin/bash

if [ ! -f ./bin/generate-fractal ]; then
  ./bin/download-generate-fractal-binary
fi

exec "$@"
