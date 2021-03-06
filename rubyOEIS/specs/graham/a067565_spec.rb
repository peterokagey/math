require 'prime'
require_relative __FILE__.sub("specs", "scripts").sub("_spec", "")

describe OEIS do

  def a(n)
    OEIS.a067565(n)
  end

  it "should know the small cases" do
    expect(a(6)).to eq 2
    expect(a(8)).to eq 3
    expect(a(10)).to eq 5
    expect(a(12)).to eq 6
  end

  it "should handle perfect squares" do
    (1..70).each { |k| expect(a(k*k)).to eq k*k }
  end

  it "should know: a(k) == 0 iff k is prime" do
    (1..100).each do |k|
      expect([k, a(k)]).to eq     [k, 0] if  Prime.prime?(k)
      expect([k, a(k)]).not_to eq [k, 0] if !Prime.prime?(k)
    end
  end

  it "should not try to go beyond 5000" do
    expect(a(5001)).to eq nil
  end

end
