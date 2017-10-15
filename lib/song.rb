class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    placeholder = self.new
    @@all << placeholder
    return placeholder
  end

  def self.new_by_name(name)
    placeholder = self.new
    placeholder.name = name
    @@all << placeholder
    placeholder
  end

  def self.create_by_name(name)
    placeholder = self.new
    placeholder.name = name
    @@all << placeholder
    placeholder
  end

  def self.find_by_name(name)
    @@all.each do |song|
      if song.name == name
        return song
      end
    end
    return nil
  end

  def self.find_or_create_by_name(name)
  end

  def self.alphabetical
    # @@all.sort!
  end

  def self.new_from_filename(name)
  end

  def self.create_from_filename(name)
  end

  def self.destroy_all
    @@all.clear
  end
end
