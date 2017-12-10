class Toptedtalks::Speaker

  def self.all
    self.scrape_speaker
  end

  def self.scrape_speaker(profile_url)
    doc = Nokogiri::HTML(open(profile_url))
    binding.pry
    # speaker = []
    # section = doc.css(".playlist-talks__talk__content")
    # section.each do |talk|
    #   talks << {name: talk.css(".playlist-talks__meta").css(".playlist-talks__title").text.split.map(&:capitalize).join(' ').strip, url: "https://www.ted.com" + talk.css(".playlist-talks__meta").css(".playlist-talks__title").css("a").attribute("href").value, speaker: talk.css(".playlist-talks__meta").css(".playlist-talks__speaker").text.strip, description: talk.css(".playlist-talks__info").css("div.playlist-talks__description.m5").text.strip }
    # end
    # talks
  end

end
