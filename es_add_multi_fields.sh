#!/bin/sh -u

curl -X PUT -H "Content-Type: application/json" \
     -d '{"mappings":{"properties":{"gs.app":{"type":"text","fields":{"raw":{"type":"keyword"}}}}}}' \
     http://ES-1.FaaSProxy.srcb.ceres.local:9200/couchdb-ow-2019.08.01