#!/usr/bin/env ruby
# puts ARGV[0].scan(/\[from:([a-zA-Z]+|\+?\d{11})\] \[to:([a-zA-Z]+|\+?\d{11})\] \[flags:(-?\d:-?\d:-?\d:-?\d:-?\d)\]/).flatten.join(",")

SENDER = '\[from:([a-zA-Z]+|\+?\d{11})\]'
RECEIVER = '\[to:([a-zA-Z]+|\+?\d{11})\]'
FLAGS = '\[flags:(-?\d:-?\d:-?\d:-?\d:-?\d)\]'
message = SENDER + " " + RECEIVER + " " + FLAGS
puts ARGV[0].scan(/#{message}/).flatten.join(",")
