require_relative '../alec_sequences/a269347'

class OEIS
  def self.a271328(n)
    OEIS.a269347(3 * n)/3
  end
end
