require_relative 'a272036'
require_relative '../helpers/subset_logic'
class A272083Builder

  def self.sequence(terms, seed)
    until seed.length >= terms
      row_count = seed[1..-1].zip(seed).count { |a, b| a >= b } + 1
      seed += Subset.one_indexed(OEIS.a272036(row_count + 1)).reverse
    end
    seed
  end

end

class OEIS
  @@a272083 = [1]

  def self.a272083(n)
    @@a272083 = A272083Builder.sequence(n, @@a272083)
    @@a272083[n - 1]
  end
end

# values = File.
#   read("/Users/pkagey/personal/math/Sloanes/lib/b-files/b272083.txt").
#   split("\n")[1..-1].
#   map { |s| s.split("\s")[1].to_i }

# seqs =  values.
#   zip(values[1..-1]).
#   chunk { |a, b| !b || a < b }.
#   map { |_, ary| ary.map(&:first) }[1..-1].
#   each_slice(2).
#   map(&:flatten).
#   unshift([1])

# Irregular triangle read by rows: Lexicographically ordered, strictly
# decreasing integer sequences with the property that the sum of inverses
# equals one.

# [1]
# [6, 3, 2]
# [12, 6, 4, 2]
# [15, 10, 3, 2]
# [15, 12, 10, 4, 2]
# [15, 12, 10, 6, 4, 3]
# [18, 9, 3, 2]
# [18, 12, 9, 4, 2]
# [18, 12, 9, 6, 4, 3]
# [18, 15, 10, 9, 6, 2]
# [18, 15, 12, 10, 9, 4, 3]
# [20, 5, 4, 2]
# [20, 6, 5, 4, 3]
# [20, 12, 6, 5, 2]
# [20, 15, 10, 5, 4, 3]
# [20, 15, 12, 10, 5, 2]
# [20, 15, 12, 10, 6, 5, 3]
# [20, 18, 9, 5, 4, 3]
# [20, 18, 12, 9, 5, 2]
# [20, 18, 12, 9, 6, 5, 3]
# [20, 18, 15, 10, 9, 6, 5, 4]
# [20, 18, 15, 12, 10, 9, 5, 3]
# [24, 8, 3, 2]
# [24, 12, 8, 4, 2]
# [24, 12, 8, 6, 4, 3]
# [24, 15, 10, 8, 6, 2]
# [24, 15, 12, 10, 8, 4, 3]
# [24, 18, 9, 8, 6, 2]
# [24, 18, 12, 9, 8, 4, 3]
# [24, 18, 15, 10, 9, 8, 2]
# [24, 18, 15, 10, 9, 8, 6, 3]
# [24, 18, 15, 12, 10, 9, 8, 6, 4]
# [24, 20, 8, 5, 4, 3]
# [24, 20, 12, 8, 5, 2]
# [24, 20, 12, 8, 6, 5, 3]
# [24, 20, 15, 10, 8, 6, 5, 4]
# [24, 20, 15, 12, 10, 8, 5, 3]
# [24, 20, 18, 9, 8, 6, 5, 4]
# [24, 20, 18, 12, 9, 8, 5, 3]
# [24, 20, 18, 15, 10, 9, 8, 5, 4]
# [24, 20, 18, 15, 12, 10, 9, 8, 6, 5]
