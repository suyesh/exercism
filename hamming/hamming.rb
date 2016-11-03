module BookKeeping
    VERSION = 3
end

class Hamming
  class << self
    def compute(dna1, dna2)
        return 0 if dna1.nil? || dna2.nil?
        raise ArgumentError if dna1.length != dna2.length
        return (dna1.chars.zip(dna2.chars).select { |_dna| _dna[0] != _dna[1] }).count
    end
  end
end
