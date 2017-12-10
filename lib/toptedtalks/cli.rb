class Toptedtalks::CLI

  def call
    puts ""
    puts "The 25 Most Popular Ted Talks of All Time"
    puts ""
    pull_talks
    list_talks
    menu
    goodbye
  end

  def pull_talks
    @talks = []
    scraped_data = Toptedtalks::Scraper.new
    scraped_data.all.each do |talk|
    @talks << Toptedtalks::Talk.new(talk)
    end
  end

  def list_talks
    @talks.each.with_index(1) do |talk, i|
      puts "#{i}. #{talk.name} by #{talk.speaker}"
    end
  end

  def menu
    input = nil
    speaker_info = nil
    while input != "exit"
      puts ""
      puts "Which talk would you like to see more info on? Type 1-25 to choose a talk, type list to see choices again, type exit to leave."
      input = gets.strip.downcase
      if input.to_i > 0 && input.to_i < 25
        puts ""
        puts "Ted Talk Rank: #{input.to_i}"
        puts ""
        puts "Title: \"#{@talks[input.to_i-1].name}\""
        puts "Speaker: #{@talks[input.to_i-1].speaker}"
        puts ""
        puts "Description: #{@talks[input.to_i-1].description}"
        puts ""
        puts "Watch Video: #{@talks[input.to_i-1].url}"
      elsif input == "list"
        list_talks
      elsif input != "exit"
        puts ""
        puts "Whoops, invalid entry. Please try entering your selection again."
      end
    end
  end

  def goodbye
    puts "Come back soon for more ideas worth spreading!"
  end
end
