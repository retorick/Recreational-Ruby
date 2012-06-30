#!/usr/local/bin/ruby

def is_palin(n)
    rev_n = n.to_s.reverse.to_i
    return n == rev_n
end

$max_palin = 1

max = 1000
i = 1
finished = false
while not finished and i < max
    (0...i).each do |n|
        x = max - i    
        y = max - (i - n)
#        puts "Multiplying #{x} by #{y}"
        if is_palin(x*y)
            puts "#{x} x #{y} = #{x*y}"
            $max_palin = x*y if x*y > $max_palin
            finished = $max_palin == 906609
        end
    end
    i += 1
end

puts "Max: #{$max_palin}"

