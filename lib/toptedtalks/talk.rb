class Toptedtalks::Talk

  attr_accessor :name, :speaker, :description, :url

  @@all = []

  def initialize(talks)
    @name = talks[:name]
    @speaker = talks[:speaker]
    @description = talks[:description]
    @url = talks[:url]
    @@all << self
  end

  def self.all
    @@all
  end

end
