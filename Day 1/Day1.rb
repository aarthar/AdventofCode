#!/usr/bin/env ruby

class NumberCompare

  def initialize(s)
    @s_length = s.length
    @s_array = s.split('')
    @counter = 0
    @sum = 0 if @sum.nil?
    @s_length.times do
      if @counter == (@s_length - 1)
        if @s_array[@counter] == @s_array[0]
          @sum += @s_array[@counter].to_i
          puts @sum
          return @sum
        else
          puts @sum
          return @sum
        end
      else
        if @s_array[@counter] == @s_array[@counter + 1]
          @sum += @s_array[@counter].to_i
          @counter += 1
        else
          @counter += 1
        end
      end
    end
  end

end

puts "Please enter your string: "
string = gets.chomp

NumberCompare.new(string)
