#!/bin/bash

CID=$(docker ps | fzf | awk '{print $1}')

docker rm -f ${CID} 
