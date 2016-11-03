module BookKeeping
  VERSION = 5
end

class Gigasecond
  class << self
    def from(time)
        time + 10**9
    end
  end
end
