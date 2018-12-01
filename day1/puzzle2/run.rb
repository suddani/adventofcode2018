#!/usr/bin/env ruby

def find(sequence)
  encounterd_sequences = {0 => true}
  current_frequency = 0

  while true do
    sequence.each do |input|
      current_frequency = current_frequency+input.to_i
      return current_frequency if encounterd_sequences[current_frequency]
      encounterd_sequences[current_frequency]= true
    end
  end
end

puts "#{find(["+1", "-1"])} => 0"
puts "#{find(["+3", "+3", "+4", "-2", "-4"])} => 10"
puts "#{find(["-6", "+3", "+8", "+5", "-6"])} => 5"
puts "#{find(["+7", "+7", "-2", "-7", "-4"])} => 14"

puts find(File.read("input").split("\n"))