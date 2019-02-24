def caesar_cipher(str, shift) 
  lowercase_letters = Array('a'..'z')
  uppercase_letters = Array('A'..'Z')
  new_str = ''
  str.each_char do |c|
    if lowercase_letters.include?(c)
      shifted_idx = lowercase_letters.index(c) + shift
      # if the new idx is out of bounds, loop back to beginning for idx
      if shifted_idx > 26
        shifted_idx -= 26
      end
      new_str += lowercase_letters[shifted_idx]
    elsif uppercase_letters.include?(c)
      shifted_idx = uppercase_letters.index(c) + shift
      if shifted_idx > 26
        shifted_idx -= 26
      end
      new_str += uppercase_letters[shifted_idx]       
    else
      new_str += c       
    end
  end
  return new_str
end
