require 'thor/group'

module Movies

class Title

  # Attributes to strip
  @@stripAttrs = [
    'R5',
    'XviD-DOSE',
    'XviD',
    'READNFO',
  ]

  def self.parse(title)

    title = Pathname.new(title).basename.to_s

    if title.include? "."
      title = title.split(".").join(" ")
    end

    @@stripAttrs.each do |pattern|
      title = title.gsub(pattern, "")
    end

    return title
  end

private

  def self.remove

  end
end
end