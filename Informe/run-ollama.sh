#!/usr/bin/env bash

ollama serve &
ollama list
ollama pull llama3:8b
ollama create d-iag-model -f diag
