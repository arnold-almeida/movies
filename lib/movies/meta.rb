module Movies

  class Meta

    @@indexName = '.MovieMeta'

    def self.checkIndex(folder)

      puts "Does folder have index ?"
      file =  folder + "/#{@@indexName}"
      puts file
      file = Pathname.new(file)

      if folder

      end
    end
  end

end

