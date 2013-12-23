require 'thor/group'

module Movies

class Scan < Thor::Group

  desc "Scans a folder for movie files"
  def self.folder(path, opts)



    # Hard coded for now ...
    folder =  '/Volumes/DOTFILES/Movies/REAL/*';
    files = []
    files = Dir.glob(folder)
    found = 0

    if opts[:verbose]
      puts "Searching for new files in [#{folder}]"
    end

    files.each do |file|

      valid = false;

      if File.directory? file
        if Movies::Meta::checkIndex(file) == true
          if opts[:verbose]
            puts "Skipping folder..."
          end
        end
      else
        if Movies::Utility::isMovieFile(file)
          filename = Pathname.new(file).basename
          puts "[#{filename}] has been converted to a folder"
        else
          filename = Pathname.new(file).basename
          puts "[#{filename}] is Invalid. Ignoring..."
        end

      end

      movieTitle = Movies::Title::parse(file)

      puts '#########'
      puts "Searching for '#{movieTitle}' on TMDB..."
      puts '#########'

      Tmdb::Api.key("b1955c9c04f52600c1f17441de3bd496")
      results = Tmdb::Movie.find(movieTitle);

      rows = []

      results.each do |movie|

        directors = []
        starring = []

        Tmdb::Movie.crew(movie.id).each do |crew|
          if crew['department'] == 'Directing'
            directors << crew['name']
          end
        end

        Tmdb::Movie.casts(movie.id).first(3).each do |cast|
          starring << cast['name']
        end

        year = ""

        if !movie.release_date.empty?
          year = Date.parse(movie.release_date).year
        end

        rows << [
          year,
          movie.title,
          directors.join(', '),
          starring.join(', ')
        ]

      end

      table = Terminal::Table.new :headings => ['Year', 'Title', 'Directors', 'Starring'], :rows => rows
      puts table

      found = found +1
    end

    puts "Found : #{found} movie/s"









    end
  end

private
  def self.foo

  end

end
