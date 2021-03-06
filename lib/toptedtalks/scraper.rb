class Toptedtalks::Scraper

  def all
    self.scrape_talks
  end

  def scrape_talks
    doc = Nokogiri::HTML(open("https://www.ted.com/playlists/171/the_most_popular_talks_of_all"))
    talks = []
    section = doc.css(".playlist-talks__talk__content")
    section.each do |talk|
      talks << {name: talk.css(".playlist-talks__meta").css(".playlist-talks__title").text.split.map(&:capitalize).join(' ').strip, url: "https://www.ted.com" + talk.css(".playlist-talks__meta").css(".playlist-talks__title").css("a").attribute("href").value, speaker: talk.css(".playlist-talks__meta").css(".playlist-talks__speaker").text.strip, description: talk.css(".playlist-talks__info").css("div.playlist-talks__description.m5").text.strip, profile_url: "https://www.ted.com" + talk.css(".playlist-talks__meta").css(".playlist-talks__speaker__link").css("a").attribute("href").value
}
    end
    talks
  end

end
