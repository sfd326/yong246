#!/bin/sh
if [ ! -f UUID ]; then
  UUID="e8dde789-edfe-4e76-a610-eeba3d6b8d5c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

