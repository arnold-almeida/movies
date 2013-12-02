require 'thor'
module Movies
  class CLI < Thor

    desc "portray ITEM", "Determines if a piece of food is gross or delicious"
    def hello(name)
      puts "Hello #{name}"
    end
  end
end
