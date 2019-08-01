#!/bin/sh -u

curl -X PUT -H "Content-Type: application/json" \
     -d '{"mappings":{"properties":{"gs.app":{"type":"text","fields":{"raw":{"type":"keyword"}}}}}}' \
     http://ES-1.FaaSProxy.srcb.ceres.local:9200/couchdb-ow-2019.07.31

#curl -X PUT -H "Content-Type: application/json" \
#     -d '{"properties":{"gs.app":{"type":"text","fields":{"raw":{"type":"keyword"}}}}}' \
#     http://ES-1.FaaSProxy.srcb.ceres.local:9200/couchdb-ow-2019.08.01/_mapping