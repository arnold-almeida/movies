require 'thor'

require 'movies'


module Movies

  class CLI < Thor

    class_option :verbose, :type => :boolean

    desc "scan <folder>", "Scans folder for new movies to index"
    def scan(folder=nil)

      Movies::Scan::folder(folder)



    end

  end

end

