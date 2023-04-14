#!/bin/bash -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

centos_version="$(cat $DIR/version | tr -d '\n')"

repo=${KUBEVIRTCI_IMAGE_REPO:-quay.io/kubevirtci}

docker build --build-arg centos_version=$centos_version . -t ${repo}/centos9
