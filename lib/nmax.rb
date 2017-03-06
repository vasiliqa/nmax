require 'nmax/version'

# It finds n maximum integers in file
module Nmax
  def self.max_integers(file, n)
    return if n <= 0

    numbers = []
    tmp = []

    file.each_char do |ch|
      if ch =~ /\d/
        tmp << ch
      elsif tmp.any?
        numbers << tmp.join.to_i && tmp.clear
      end
    end

    numbers.sort.reverse.first(n)
  end
end
