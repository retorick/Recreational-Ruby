#!/usr/local/bin/ruby

class Prob1
    def initialize
        @total = 0
        calc_sum
    end

    def total
        return @total
    end

    private
    def calc_sum
        counter = 1
        begin
            if counter % 3 == 0 || counter % 5 == 0
                @total += counter
            end
            counter += 1
        end until counter == 1000
    end
end

prob = Prob1.new
puts prob.total
