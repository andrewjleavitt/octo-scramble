class OctoScramble

  attr_accessor :words, :score

  def initialize
    @words = []
    @score = 0
    another = 'y'

    while another == 'y' do
      puts 'enter a word'
      @words << gets.chomp
      puts "another word?"
      another = gets.chomp
    end

    @words.shuffle!
    @words.each do |word|
      puts "Unscramble the word: #{word_shuffle(word)}"
      puts "Word: "
      guess = gets.chomp
      if guess == word
        puts "correct!"
        @score += 1
      else
        puts "Sorry, that was wrong."
      end
    end

    puts "You got #{@score} out of #{words.count} correct."

  end

  def word_shuffle word
    word.split('').shuffle.join
  end
end

OctoScramble.new