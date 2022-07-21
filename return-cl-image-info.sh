#!/bin/bash

function find_latest {
IMAGE_NAME=$(curl -L -s 'https://registry.hub.docker.com/v2/repositories/'$1'/tags?page_size=1' | jq -r '.results[0].name')
echo $1:$IMAGE_NAME
}

if [[ $1 == "teku" ]]
then
    echo "consensys/teku:develop"
elif [[ $1 == "lighthouse" ]]
then
    echo "sigp/lighthouse:latest-unstable"
elif [[ $1 == "nimbus" ]]
then
    find_latest "parithoshj/nimbus"
elif [[ $1 == "lodestar" ]]
then
    echo "chainsafe/lodestar:next"
elif [[ $1 == "prysm" ]]
then
    echo "gcr.io/prysmaticlabs/prysm/beacon-chain:latest,gcr.io/prysmaticlabs/prysm/validator:latest"
elif [[ $1 == "nethermind" ]]
then
    echo "nethermindeth/hive:latest"
elif [[ $1 == "besu" ]]
then
    echo "hyperledger/besu:develop"
elif [[ $1 == "erigon" ]]
then
    echo "parithoshj/erigon:devel"
elif [[ $1 == "kurtosis" ]]
then
    echo "parithoshj/kurtosis:fix-bootnode-x86"
fi
