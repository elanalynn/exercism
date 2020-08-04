require 'pry-byebug'
require 'set'

class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    result = []
    marked = Set.new
    (2..@limit).each do |n|
      m = n
      while m + n <= @limit
        m = m + n
        marked << m
      end
      result << n if !marked.include? n
    end
    result
  end
end
