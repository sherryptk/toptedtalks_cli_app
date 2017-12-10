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
      puts "Which talks would you like to see more info on? Type 1-25 to choose, type list to see choices again. To exit type exit"
      input = gets.strip.downcase
      if input.to_i > 0
        puts @talk[input.to_i-1]
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
