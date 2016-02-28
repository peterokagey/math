require_relative '../helpers/ekg_builder'
require_relative '../helper_sequences/a064413'

class OEIS
  A065519_SEQUENCE = A064413_SEQUENCE.each_with_index.map { |e, i| e - 1 - i }

  def self.a065519(n)
    raise "A065519 not defined for n = #{n} < 1" if n < 1
    A065519_SEQUENCE[n - 1] ||
    EKGBuilder.sequence(n, [1, 2]).each_with_index.map { |e, i| e - 1 - i }.last
  end
end