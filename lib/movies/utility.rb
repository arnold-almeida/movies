module Movies

class Utility

  # List of valid movie extentions
  @@validExtentions = [
    '.avi',
    '.wmv',
    '.mp4',
    '.m4v',
    '.mov',
  ]

  def self.isMovieFile(file)
      ext = Pathname.new(file).extname;

      if @@validExtentions.include?(ext)
        return self.moveToFolder(file, ext)
      end

      return false
  end

  def self.moveToFolder(file, ext)

      pathname   = Pathname.new(file).dirname
      filename   = Pathname.new(file).basename
      foldername = filename.sub(ext, "")

      newDir      = "#{pathname}/#{foldername}/"
      destination = "#{pathname}/#{foldername}/#{filename}"

      if Pathname.new(newDir).mkdir
        FileUtils.mv(file, destination)
      end

  end


end
end