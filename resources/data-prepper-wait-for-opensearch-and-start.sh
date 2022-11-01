#!/bin/bash

#
# Copyright OpenSearch Contributors
# SPDX-License-Identifier: Apache-2.0
#

until [[ $(curl --write-out %{http_code} --output /dev/null --silent --head --fail https://vpc-aosstraceanalytics-ihhshiknaitdndyqjow5m3wv5u.us-east-1.es.amazonaws.com:443 -u aosadmin:Passw0rd1! --insecure)) == 200 ]]; do
  echo "Waiting for OpenSearch to be ready"
  sleep 1
done

./bin/data-prepper
