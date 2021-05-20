#!/bin/bash

user=$1
htpasswd -B auth/.htpasswd "$1"