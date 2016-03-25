require_relative __FILE__.sub("specs", "scripts").sub("_spec", "")

describe OEIS do

  def a(n)
    OEIS.a269525(n)
  end

  it "should know first 10 values" do
    expect(a(1)).to eq 1
    expect(a(2)).to eq 1
    expect(a(3)).to eq 3
    expect(a(4)).to eq 6
    expect(a(5)).to eq 6
    expect(a(6)).to eq 15
    expect(a(7)).to eq 6
    expect(a(8)).to eq 28
    expect(a(9)).to eq 6
    expect(a(10)).to eq 37
  end

end
