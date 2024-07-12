def hangman(word, letters)
    guess_word = word.split('').map { |letter| letters.include?(letter) ? letter : "_" }
  
    guess_word.join('')
  end

  puts hangman("test", ["t"])
  puts hangman("crunchy", ["c", "u"])
