class Toptedtalks::CLI

  def call
    puts "The 25 Most Popular Ted Talks of All Time"
    list_talks
    menu
    goodbye
  end

  def list_talks
    @talks = Toptedtalks::Talk.all
  end

  def menu
    input = nil
    while input != "exit"
      puts "Which talks would you like to see more info on? 1-5, 5-10, 10-15 or 15-25? To exit type exit"
      input = gets.strip.downcase
      case input
      when "1-5"
        puts "--talks 1-5--"
      when "5-10"
        puts "--talks 5-10--"
      when "10-15"
        puts "--talks 10-15--"
      when "15-25"
        puts "--talks 15-25--"
      else
        puts "Please select a number between 1-25 for talk details or type exit if you're done."
      end
    end

  end

  def goodbye
    puts "Come back for more ideas worth spreading."
  end

end
