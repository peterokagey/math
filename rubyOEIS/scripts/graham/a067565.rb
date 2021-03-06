require_relative '../../tools/helpers/local_b_file'

class OEIS

  # Inverse of Ron Graham's sequence (A006255), or zero if and only if n is a
  # prime.
  def self.a067565(n)
    @@inverse_hash ||= LocalBFile.new("067565").to_hash
    @@inverse_hash[n]
  end

end
