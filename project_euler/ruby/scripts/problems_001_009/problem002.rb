class ProjectEuler

  # Each new term in the Fibonacci sequence is generated by adding the previous
  # two terms. By starting with 1 and 2, the first 10 terms will be:

  # 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

  # By considering the terms in the Fibonacci sequence whose values do not
  # exceed four million, find the sum of the even-valued terms.
  def self.problem002
    seq = [1,1]
    seq << seq[-1] + seq[-2] until seq[-1] > 4_000_000

    sum = 0
    (0...seq.length/3).each { |index| sum += seq[3 * index + 2] }
    sum
  end
  # 4613732
  # 2.0e-05 seconds

end
