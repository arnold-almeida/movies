module Movies

  class Scan

    def self.folder(path)

      # Hard coded for now
      folder =  '/Volumes/DOTFILES/Movies/REAL/*';
      files = []
      files = Dir.glob(folder)
      found = 0

      files.each do |file|
        isDir = File.directory? file
        puts Movies::Name::parse(file)
        found = found +1
      end

      puts "Found : #{found} movie/s"

      # # Find.find(dir) do |f|
      # #   files << path if path =~ /.*\.pdf$/
      # # end

      # puts "Searching for files in '#{dir}'"

      # Tmdb::Api.key("b1955c9c04f52600c1f17441de3bd496")
      # results = Tmdb::Movie.find("Tristan.and.Isolde[2006]DvDrip[Eng]-aXXo");

      # rows = []

      # results.each do |movie|

      #   directors = []
      #   starring = []

      #   Tmdb::Movie.crew(movie.id).each do |crew|
      #     if crew['department'] == 'Directing'
      #       directors << crew['name']
      #     end
      #   end

      #   Tmdb::Movie.casts(movie.id).first(3).each do |cast|
      #     starring << cast['name']
      #   end

      #   rows << [
      #     Date.parse(movie.release_date).year,
      #     movie.title,
      #     directors.join(', '),
      #     starring.join(', ')
      #   ]

      # end

      # table = Terminal::Table.new :headings => ['Year', 'Title', 'Directors', 'Starring'], :rows => rows

      # puts table
    end
  end
end
