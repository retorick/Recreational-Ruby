#!/usr/local/bin/ruby

n = 600851475143

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

$factors = []

def factor(n)
    f = (n**0.5).to_i
    if f % 2 == 0
        f += 1
    end

    while f >= 3
        if is_prime(f) and n % f == 0
            $factors.push(f) if $factors.include?(f) == false
            quotient = n / f
            if is_prime(quotient)
                $factors.push(quotient) if $factors.include?(quotient) == false
            else
                factor(quotient)
            end
        end
        f -= 2
    end
end

factor(n)
puts "Factors:"
puts $factors.sort

