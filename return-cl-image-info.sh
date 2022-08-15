#!/bin/bash

function find_latest {
IMAGE_NAME=$(curl -L -s 'https://registry.hub.docker.com/v2/repositories/'$1'/tags?page_size=1' | jq -r '.results[0].name')
echo $1:$IMAGE_NAME
}

if [[ $1 == "teku" ]]
then
    echo "consensys/teku:22.8.0"
elif [[ $1 == "lighthouse" ]]
then
    echo "sigp/lighthouse:v2.5.1"
elif [[ $1 == "nimbus" ]]
then
    find_latest "parithoshj/nimbus"
elif [[ $1 == "lodestar" ]]
then
    echo "chainsafe/lodestar:next"
elif [[ $1 == "prysm" ]]
then
    echo "gcr.io/prysmaticlabs/prysm/beacon-chain:v2.1.4,gcr.io/prysmaticlabs/prysm/validator:v2.1.4"
elif [[ $1 == "nethermind" ]]
then
    echo "nethermindeth/nethermind:goerli_testing"
elif [[ $1 == "besu" ]]
then
    echo "hyperledger/besu:22.7.1-SNAPSHOT-openjdk-11-debug-amd64"
elif [[ $1 == "erigon" ]]
then
    echo "parithoshj/erigon:devel"
elif [[ $1 == "kurtosis" ]]
then
    echo "kurtosistech/eth2-merge-kurtosis-module:0.5.8"
fi
