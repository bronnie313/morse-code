MORSE_CHAR = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_char(char)
  MORSE_CHAR[char] || ''
end

def decode_word(word)
  characters = word.split
  characters.map { |char| decode_char(char) }.join
end

def decode_message(message)
  words = message.split('   ')
  words.map { |word| decode_word(word) }.join(' ')
end
