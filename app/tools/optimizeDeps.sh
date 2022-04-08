#!/bin/bash

set -euxo pipefail
here=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)

FILE="$here/../.vite/optimizeDeps.app.json"

if ! test -f "$FILE"; then
    mkdir "$here/../.vite"
    echo "{\"vite\": {}}" > "$here/../.vite/optimizeDeps.app.json"
fi