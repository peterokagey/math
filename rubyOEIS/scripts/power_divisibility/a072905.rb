require_relative '../helper_sequences/a000188'
require_relative '../helper_sequences/a007913'

class OEIS
  # a(n) is the least k > n such that k*n is a square.
  def self.a072905(n)
    a007913(n)*(a000188(n)+1)**2
  end
end
