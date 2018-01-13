#!/bin/bash
# src/templates directory needs to be copied to current directory

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pushd $DIR

myntblocks \
    --enable-emission-monitor 
#    --port 8082 \ # port 8081 opened by default
    --bc-path ~/.mynt/lmdb \ # default path is ~/.graft/lmdb
    --daemon-url=localhost:24091            # default daemon RPC endpoint is localhost:18981

popd

