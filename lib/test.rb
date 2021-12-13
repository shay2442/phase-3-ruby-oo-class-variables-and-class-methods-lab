require "pry"
class Bartender

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def greeting
        puts "Hello, #{name}, how are you doing?"
    end

binding.pry

end