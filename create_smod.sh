#!/usr/bin/env bash
# Build soldat.smod file
# Requires zip

set -o errexit
set -o pipefail
set -o nounset
#set -o xtrace

pushd . &> /dev/null

if ! command -v zip &> /dev/null
then
    echo "Error: Cannot find zip executable"
    exit
fi

ROOTDIR=$(realpath "$(dirname "${BASH_SOURCE[0]}")")
cd "${ROOTDIR}"
if [ -f "soldat.smod" ]; then
    rm "soldat.smod"
fi

echo "Creating 'soldat.smod' file..."

cd "${ROOTDIR}/shared"
zip -r ../soldat.smod *

cd "${ROOTDIR}/client"
zip -ur ../soldat.smod configs

cd "${ROOTDIR}/server"
zip -ur ../soldat.smod configs

echo "Created soldat.smod"

popd &> /dev/null
