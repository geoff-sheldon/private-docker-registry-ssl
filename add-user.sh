#!/bin/bash

user=$1

password=$(mkpasswd -m sha-512)

#usename/password string
upstring="$user:$password"

echo $upstring >> auth/.passwords