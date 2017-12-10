class Toptedtalks::CLI

  def call
    puts "The 25 Most Popular Ted Talks of All Time"
    list_talks
    menu
    goodbye
  end

  def list_talks
    @talk = Toptedtalks::Talk.all
    @talk.each.with_index(1) do |talk, i|
      puts "#{i}. #{talk[:name]} - #{talk[:speaker]}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts ""
      puts "Which talk would you like to see more info on? Type 1-25 to choose a talk, type list to see choices again. Type exit to leave."
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
        # binding.pry
      elsif input == "list"
        puts list_talks
      else
        puts "Please select a number between 1-25 for talk details, type list to see choices or type exit if you're done."
      end
    end

  end

  def goodbye
    puts "Come back for more ideas worth spreading."
  end

end
