
def get_shifted_idx(letters_array, char, shift)
    shifted_idx = letters_array.index(char) + shift
  if shifted_idx > letters_array.size
    shifted_idx -= letters_array.size
  end
  return shifted_idx
end

def caesar_cipher(str, shift) 
  cc_str = ''
  lowercase_letters = ('a'..'z').to_a
  uppercase_letters = ('A'..'Z').to_a
  str.split("").each_with_object("") do |c| 
    if lowercase_letters.include?(c)
      cc_str << lowercase_letters[get_shifted_idx(lowercase_letters, c, shift)]
    elsif uppercase_letters.include?(c)
      cc_str << uppercase_letters[get_shifted_idx(uppercase_letters, c, shift)]
    else
      cc_str << c
    end
  end
  return cc_str
end
