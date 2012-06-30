#!/usr/local/bin/ruby

def is_prime(n)
    s = (n**0.5).to_i
    i = 2
    inc = 1
    while i <= s 
        if n % i == 0
            return false
        end
        i += inc
    end
    return true
end

nth = 2
x = 3
while nth <= 10001
    if is_prime(x)
        puts "Prime ##{nth}: #{x}"
        nth += 1
    end
    x += 2
end
