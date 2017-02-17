require 'nmax/version'

# It finds n maximum integers in file
module Nmax
  def self.max_integers(file, n)
    return if n <= 0

    data = file.read
    return if data.empty?

    integers = data.scan(/\d{1,1000}/).map(&:to_i)
    integers.sort.reverse.first(n)
  end
end
