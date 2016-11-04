class Raindrops
  class << self
    def convert(num)
        result = ''
        sounds = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }
        if num % 3 != 0 && num % 5 != 0 && num % 7 != 0
          return num.to_s
        else
          sounds.keys.each { |sound| num % sound == 0 ? result << sounds[sound] : 'Error' }
        end
        result
    end
  end
end

module BookKeeping
    VERSION = 3
end
