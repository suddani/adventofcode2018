#!/usr/bin/env ruby

puts File.read("input").split("\n").reduce(0) {|f, input| f+input.to_i }