#!/bin/bash
SHA=${GITHUB_SHA::8}

cat << EOF > Dockerrun.aws.json
{
  "AWSEBDockerrunVersion": "1",
  "Image": {
    "Name": "gabygm/node-docker-eb:$SHA"
  },
  "Ports": [
    {
      "ContainerPort": "3000"
    }
  ]
}
EOF
