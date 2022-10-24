#!/bin/bash

function find_latest {
IMAGE_NAME=$(curl -L -s 'https://registry.hub.docker.com/v2/repositories/'$1'/tags?page_size=1' | jq -r '.results[0].name')
echo $1:$IMAGE_NAME
}

if [[ $1 == "teku" ]]
then
    echo "consensys/teku:22.10.1"
elif [[ $1 == "lighthouse" ]]
then
    echo "sigp/lighthouse:v3.1.2"
elif [[ $1 == "nimbus" ]]
then
    echo "statusim/nimbus-eth2:amd64-v22.10.1"
elif [[ $1 == "lodestar" ]]
then
    echo "chainsafe/lodestar:v1.0.0"
elif [[ $1 == "prysm" ]]
then
    echo "gcr.io/prysmaticlabs/prysm/beacon-chain:v3.1.1,gcr.io/prysmaticlabs/prysm/validator:v3.1.1"
elif [[ $1 == "nethermind" ]]
then
    echo "nethermind/nethermind:1.14.3"
elif [[ $1 == "besu" ]]
then
    echo "hyperledger/besu:22.7.7"
elif [[ $1 == "erigon" ]]
then
    echo "parithoshj/erigon:devel"
elif [[ $1 == "kurtosis" ]]
then
    echo "kurtosistech/eth2-merge-kurtosis-module:0.7.1"
fi
