require 'pry'

katz_deli = []

def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  elsif katz_deli.length > 0
    intro = "The line is currently:"
    katz_deli.each_with_index do |value, index|
      intro << " #{index + 1}. #{value}"
    end
    puts intro
  end
end


def take_a_number(katz_deli, name)
  inLine = katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(name)
  if katz_deli.length >= 1
    katz_deli << name
    puts "Currently serving #{name}."
  else
    puts "There is nobody waiting to be served!"
  end
end
