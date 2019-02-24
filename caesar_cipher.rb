$lowercase_letters = ('a'..'z').to_a
$uppercase_letters = ('A'..'Z').to_a

def get_shifted_idx(style, char, shift)
  if style == 'lowercase'
    shifted_idx = $lowercase_letters.index(char) + shift
  else
    shifted_idx = $uppercase_letters.index(char) + shift
  end
  if shifted_idx > $lowercase_letters.size
    shifted_idx -= $lowercase_letters.size
  end
  return shifted_idx
end

def caesar_cipher(str, shift) 
  new_str = ''
  str.each_char do |c|
    if $lowercase_letters.include?(c)
      new_str += $lowercase_letters[get_shifted_idx('lowercase', c, shift)]
    elsif $uppercase_letters.include?(c)
      new_str += $uppercase_letters[get_shifted_idx('uppercase', c, shift)]
    else
      new_str += c       
    end
  end
  return new_str
end
