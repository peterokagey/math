require_relative '../scripts/a006255'

describe OEIS do

  def a(n, opts = {})
    OEIS.a006255(n, opts)
  end

  it "should handle small values" do
    # pending("")
    expect(a(1)).to eq 1
    expect(a(2)).to eq 6
    expect(a(3)).to eq 8
    expect(a(4)).to eq 4
    expect(a(5)).to eq 10
  end

  it "should handle perfect squares" do
    expect(a(9, seq:true)).to eq [9]
    expect(a(9)).to eq 9
  end

  it "should handle primes" do
    expect(a(19)).to eq 38
  end

  it "should handle highly composite numbers" do
    expect(a(2*3*5*7)).to eq 238
    expect(a(5000)).to eq 5046
    # expect(a(1000)).to eq 1044
  end

end
