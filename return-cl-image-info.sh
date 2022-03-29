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
    echo "gcr.io/prysmaticlabs/prysm/beacon-chain:kiln-0a1e93,gcr.io/prysmaticlabs/prysm/validator:kiln-ee1ee6"
elif [[ $1 == "nethermind" ]]
then
    echo "nethermindeth/nethermind:kiln_test_sync"
elif [[ $1 == "besu" ]]
then
    echo "hyperledger/besu:22.1.3-SNAPSHOT"
fi
