#!/usr/local/bin/ruby

class Prob2
    def initialize
        @total = 0
        calc_total
    end

    def total
        return @total
    end

    private
    def calc_total
        fib1 = 1
        fib2 = 1
        begin
            @total += fib2 if fib2 % 2 == 0
            fib1, fib2 = fib2, fib1 + fib2
        end until fib2 > 4000000
    end
end

prob = Prob2.new
puts prob.total
