module Movies

  class Clean < Thor::Group
    argument :movie, :type => :string, :desc => "Folder or Movie to fix"
    desc "Fixes a movie file"

    def one
      say("We're about to install your system.. blaa, blaa, blaa... We have to know you're Flick ID, get i here http://idgettr.com")
      putsflickr_id = ask("Flickr ID: ")

      puts "#{movie}"
    end

    def two
      puts "#{movie}"
    end

    def three
      puts "#{movie}"
    end

    def four
      puts "#{movie}"
    end
  end


end