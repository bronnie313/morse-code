MORSE_CODE = {:A => '.-', :B => '-...', :C => '-.-.', :D => '-..', :E => '.',
        :F => '..-.', :G => '--.', :H => '...', :I => '..', :J => '.---',
        :K => '-.-', :L => '.-..', :M => '--', :N => '-.', :O => '---',
        :P => '.--.', :Q => '--.-', :R => '.-.', :S => '...', :T => '-',
        :U => '..-', :V => '...-', :W => '.--', :X => '-..-', :Y => '-.--',
        :Z => '--..'
}.freeze

def decode_char(char)
   MORSE_CODE.key(char) || ''
end

def decode_word(word)
    characters = word.split(' ')
    characters.map { |char| decode_char(char) }.join
end

def decode(message)
    sentence = message.split('   ')
    sentence.map { |word| decode_word(word) }.join(' ')
end

result = decode("-- -.--   -. .- -- .")
puts result