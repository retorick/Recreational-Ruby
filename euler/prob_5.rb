#!/usr/local/bin/ruby

n = 720

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

def factor(n)
    factors = []
    f = 2
    half = (n / 2).to_i
    while f <= half and n > 1
        if is_prime(f) and n % f == 0
            while n % f == 0
                factors.push(f)
                n /= f
            end
        end
        f += 1
    end
    return factors
end

factors = factor(n)

puts "Factors:"
puts factors.sort
