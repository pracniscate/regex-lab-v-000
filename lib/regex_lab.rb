def starts_with_a_vowel?(word)
  # \b stands for word boundary, this match is zero-length
  if word.match(/\b[aeiouAEIOU]/)
    true
  else
    false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  # \w stands for any word character (letter, number, underscore), * => zero or more of
  text.scan(/\bun\w*ing\b/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  # \A stands for start of string, [A-Z] stands for capital letters only, $ matches at the end of the string
  if text.match(/\A[A-Z].*\.$/)
    true
  else
    false
  end
end

def valid_phone_number?(phone)
  # \d stands for any digit
  phone.scan(/\d/).count == 10
end
