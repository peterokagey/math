require_relative __FILE__.sub("specs", "scripts").sub("_spec", "")

describe OEIS do

  def a(n)
    OEIS.a271468(n)
  end

  it "should know first 25 values" do
    expect(a(1)).to eq 1
    expect(a(2)).to eq 5
    expect(a(3)).to eq 10
    expect(a(4)).to eq 15
    expect(a(5)).to eq 17
    expect(a(6)).to eq 20
    expect(a(7)).to eq 25
    expect(a(8)).to eq 28
    expect(a(9)).to eq 30
    expect(a(10)).to eq 34
    expect(a(11)).to eq 35
    expect(a(12)).to eq 37
    expect(a(13)).to eq 40
    expect(a(14)).to eq 45
    expect(a(15)).to eq 50
    expect(a(16)).to eq 51
    expect(a(17)).to eq 55
    expect(a(18)).to eq 56
    expect(a(19)).to eq 60
    expect(a(20)).to eq 65
    expect(a(21)).to eq 68
    expect(a(22)).to eq 70
    expect(a(23)).to eq 74
    expect(a(24)).to eq 75
    expect(a(25)).to eq 80
  end

end
