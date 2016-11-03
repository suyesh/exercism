class HelloWorld
  class << self
    def hello(*name)
      return name.empty? ? "Hello, World!" : "Hello, #{name[0]}!"
    end
  end
end
