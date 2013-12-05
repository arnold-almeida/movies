require 'thor'
require 'movies'

module Movies

  class CLI < Thor

    class_option :verbose, :type => :boolean

    desc "scan <folder>", "Scans <folder> for new movies to index"
    def scan(folder=nil)
      Movies::Scan::folder(folder)
    end

    # register(class_name, subcommand_alias, usage_list_string, description_string)
    register(Movies::Clean, "clean", "clean", "Cleans a movie <folder>/<file>")
  end

end

