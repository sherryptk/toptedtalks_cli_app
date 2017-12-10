class Toptedtalks::CLI

  def call
    puts ""
    puts "The 25 Most Popular Ted Talks of All Time"
    puts ""
    list_talks
    menu
    goodbye
  end

  def list_talks
    @talk = Toptedtalks::Talk.all
    @talk.each.with_index(1) do |talk, i|
      puts "#{i}. #{talk[:name]} by #{talk[:speaker]}"
    end
  end

  def menu
    input = nil
    speaker_info = nil
    while input != "exit"
      puts ""
      puts "Which talk would you like to see more info on? Type 1-25 to choose a talk, type list to see choices again, type exit to leave."
      input = gets.strip.downcase
      if input.to_i > 0
        puts ""
        puts "Ted Talk Rank: #{input.to_i}"
        puts ""
        puts "Title: \"#{@talk[input.to_i-1][:name]}\""
        puts "Speaker: #{@talk[input.to_i-1][:speaker]}"
        puts ""
        puts "Description: #{@talk[input.to_i-1][:description]}"
        puts ""
        puts "Watch Video: #{@talk[input.to_i-1][:url]}"
        puts ""
        puts "Would you like to discover more about this speaker? Type yes or no."
        speaker_info = gets.strip.downcase
          if speaker_info == "yes"
            puts "info about speaker"
          end
      elsif input == "list"
        puts list_talks
      else
        puts ""
        puts "Whoops, invalid entry. Please try entering your selection again."
      end
    end
  end

  def goodbye
    puts "Come back for more ideas worth spreading!"
  end

end
