require_relative '../helper_sequences/a071068'

class OEIS

  def self.a262351(n)
    n * a071068(n)
  end

end
