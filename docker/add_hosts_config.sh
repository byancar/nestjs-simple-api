#!/bin/bash

# TODO Put in a loop
ip_address="127.0.0.1"

host_name="postgres"
matches_in_hosts="$(grep -n $host_name /etc/hosts | cut -f1 -d:)"
host_entry="${ip_address} ${host_name}"

echo "Please enter your password if requested."

if [ ! -z "$matches_in_hosts" ]
then
    echo "Postgres already configured."
else
    echo "Adding Postgres to hosts entry..."
    echo "##Postgres alias" | sudo tee -a /etc/hosts > /dev/null
    echo "$host_entry" | sudo tee -a /etc/hosts > /dev/null
fi