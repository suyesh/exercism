class Pangram
  class << self
    def is_pangram?(sentence)
      sentence.downcase.chars.uniq.sort.join.include?(('a'..'z').to_a.join)
    end
  end
end

module BookKeeping
  VERSION = 2
end
