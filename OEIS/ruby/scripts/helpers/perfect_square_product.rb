require_relative '../graham/a248663'

class Array

  A248663 = [0, 0, 1, 2, 0, 4, 3, 8, 1, 0, 5, 16, 2, 32, 9, 6, 0, 64, 1, 128, 4, 10, 17, 256, 3, 0, 33, 2, 8, 512, 7, 1024, 1, 18, 65, 12, 0, 2048, 129, 34, 5, 4096, 11, 8192, 16, 4, 257, 16384, 2, 0, 1, 66, 32, 32768, 3, 20, 9, 130, 513, 65536, 6, 131072, 1025, 8, 0, 36, 19, 262144, 64, 258, 13, 524288, 1, 1048576, 2049, 2, 128, 24, 35, 2097152, 4, 0, 4097, 4194304, 10, 68, 8193, 514, 17, 8388608, 5, 40, 256, 1026, 16385, 132, 3, 16777216, 1, 16, 0, 33554432, 67, 67108864, 33, 14, 32769, 134217728, 2, 268435456, 21, 2050, 8, 536870912, 131, 260, 512, 32, 65537, 72, 7, 0, 131073, 4098, 1024, 4, 9, 1073741824, 1, 8194, 37, 2147483648, 18, 136, 262145, 6, 65, 4294967296, 259, 8589934592, 12, 16386, 524289, 48, 0, 516, 1048577, 2, 2048, 17179869184, 3, 34359738368, 129, 64, 25, 1028, 34, 68719476736, 2097153, 32770, 5, 264, 1, 137438953472, 4096, 22, 4194305, 274877906944, 11, 0, 69, 128, 8192, 549755813888, 515, 8, 16, 65538, 8388609, 1099511627776, 4, 2199023255552, 41, 131074, 257, 2052, 1027, 80, 16384, 10, 133, 4398046511104, 2, 8796093022208, 16777217, 38, 0, 17592186044416, 17, 35184372088832, 1]

  # Let S = {n = a_0, a_1, a_2, ..., a_t = g(n)}.
  # The product of S is a perfect square if and only if
  # h(a_0) ^ h(a_1) ^ ... ^ h(a_t) == 0
  def perfect_square?
    self.map{ |i| A248663[i] || OEIS.a248663(i) }.reduce(:^) == 0
  end

end
