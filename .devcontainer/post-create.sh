#!/usr/bin/env bash
pushd .devcontainer
task init
jinja2 settings.json.j2 -o ~/.vscode-server/data/Machine/settings.json
popd
