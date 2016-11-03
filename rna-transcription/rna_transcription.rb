module BookKeeping
    VERSION = 4
end

class Complement
  COMPLEMENT = {
      C: 'G',
      G: 'C',
      T: 'A',
      A: 'U',
      U: ''
  }.freeze
  
  class << self
    def of_dna(dna)
        dna.chars.include?('X') ? '' : dna.chars.map { |_dna| COMPLEMENT[_dna.to_sym] }.join
    end
  end
end
