#!/bin/sh

# Set cassandra host and port
if [ ! -z "$CASSANDRA_HOST" ]; then
    echo "cassandra host: $CASSANDRA_HOST"
    sed -i -r 's/cassandra:9042/$CASSANDRA_HOST/g' /etc/kong/kong.yml
fi

kong start