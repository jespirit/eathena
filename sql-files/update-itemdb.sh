#!/bin/bash

host="localhost"
user="eathena"
pass="eathena"
db="eathena"
log=errors.log

commands="source item_db.sql"

mysql -h "$host" -u "$user" --password="$pass" "$db" >"$log" <<<"$commands"
