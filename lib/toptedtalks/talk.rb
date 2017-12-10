class Toptedtalks::Talk
  attr_accessor :name, :speaker, :views, :description, :url

  @@all

  def self.all
    # @@all
    talk = self.new
    talk.name = "Killing Creativity"
    talk.speaker = "Ken Robinson"
    talk.views = "4 million"
    talk.description = "Ken talks about the structure of school and whether it's killing our children's creativity."
    talk.url = "https://www.ted.com/talks/ken_robinson_says_schools_kill_creativity"

    [talk]
  end

end
