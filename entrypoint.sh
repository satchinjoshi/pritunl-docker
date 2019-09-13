#!/bin/sh

set -euxo pipefail

pritunl set-mongodb ${MONGODB_URI}
pritunl set app.reverse_proxy true
pritunl set app.server_ssl false
pritunl set app.server_port 9700

exec $@
