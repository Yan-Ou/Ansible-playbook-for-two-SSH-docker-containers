#!/bin/sh

# Start the ssh server
service ssh restart
tail -f /dev/null
# Execute the CMD
exec "$@"
