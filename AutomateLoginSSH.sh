#!/usr/bin/expect -f
## Testing expect command

## echo the test
puts "\nGet HostName\n"

## execute ssh command to connect to remote host
spawn ssh 159.223.35.145 "hostname"

## Look for password string
expect "password:"

## Send the password
send "Ubuntu\r"

puts "\nGet df command output\n"
spawn ssh 159.223.35.145 "df -h"
expect "password:"
send "Ubuntu\r"
interact
