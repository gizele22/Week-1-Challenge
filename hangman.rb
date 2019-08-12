old_sync = $stdout.sync
$stdout.sync = true

# Force Flush Ruby
old_sync = $stdout.sync
$stdout.sync = true

#Enter the title for word search game
#Word search puzzle level options
#Word search puzzle output type
#word search puzzle out
#enter your words

# set initial values

@count = 1
#@previous_tries = [] # << Array
#@history = {} # << Hash
@chances = 10

def search_word
# start here
puts "The Hangman-Puzzle Word Game"
puts "Enter Your Name"
@player_name = gets.chomp

def word(list)
  word = [{love: 'care', 'tender', 'heart', 'romance', }, {nature: 'ocean', 'island', 'sea', 'mountain'}, {wildlife: 'snake', 'tiger', 'lion', 'rhino'}]
def run_game
  puts "Choose Your Interest"
  puts "1 - Love"
  puts "2 - Nature"
  puts "3 - Wildlife"
  choice = gets.to_i

  if choice == 1
    secret_word = @easy_level
  elsif choice == 2
    secret_word = @medium_level
  elsif choice == 3
    secret_word = @hard_level
  end

  puts "Pick A Word. You Have #{@chances} Chances"
  #puts "Secret: #{secret_number}"
  guess = gets.chomp.to_i

  while @count < @chances
    if secret_word != guess
      @previous_tries << guess
      puts "Try Again"
      puts "#{@previous_tries}"
      @count += 1
      guess = gets.to_i
    else
      puts "Thats The Word!"

      score = @chances - @count
      @history[@player_name] = score

      puts "Record Score"
      puts @history

      break
    end

    if @count == @chances
      puts "Game Over"
      puts "The Words Search Will Be: #{secret_number}"

      score = @chances - @count
      @history[@player_name] = score

      puts "SCOREBOARD"
      puts @history
    end
  end

  repeat_game
end

def  repeat_game
  puts "Do You Want To Repeat Game?"

  puts "Y - Yes"
  puts "N - No"
  puts "0 - Exit Game"
  choice = gets.chomp

  if choice.upcase == 'Y'
    run_game
  else
    puts "Thank You"
    exit
  end
end
end

run_game
