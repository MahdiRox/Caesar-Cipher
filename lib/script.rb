def caesar_cipher(string, shift_num)
  # Initialize necessary variables
  alphabet = ('a'..'z').to_a
  shifted_chars = ""

  # Go through each character in the input string
  string.each_char do |char|
    if /[[:alpha:]]/.match?(char)
      # Calculate the shifted index of the current letter
      index = alphabet.index(char.downcase)
      shift_index = (index + shift_num) % alphabet.size
      
      # Get the shifted character based on the new index
      new_char = alphabet[shift_index]

      # Determine whether to make the new character uppercase or lowercase
      if char == char.upcase
        new_char = new_char.upcase
      end
      
      # Add the new character to the output string
      shifted_chars << new_char
    else
      # For non-letter characters, add them as-is to the output string
      shifted_chars << char
    end
  end

  # Return the final output string
  shifted_chars
end

puts caesar_cipher('What... a string!', 5)
