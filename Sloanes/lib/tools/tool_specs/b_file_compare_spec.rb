require_relative '../b_file_compare'

PENDING_SEQUENCES ||= {
  "A174344" => "Edit  (2015/01/24).",
  "A268038" => "Draft (2015/01/24).",
  "A268057" => "Draft (2015/01/24).",
  "A268058" => "Draft (2015/01/24).",
  "A268059" => "Draft (2015/01/24).",
  "A268060" => "Draft (2015/01/24).",
}

SequencePathIterator.sequence_numbers.each do |id|

  begin
    compare = BFileCompare.new(id)
  rescue SocketError
    puts "Could not connect to internet to check official b-file for A#{id}."
    next
  end

  next if compare.skip?

  describe "A#{id}" do
    it "should have a b-file that matches the OEIS version." do
      pending PENDING_SEQUENCES["A#{id}"] if PENDING_SEQUENCES["A#{id}"]
      expect(compare.official_range).to eq compare.local_range
    end
  end

end
