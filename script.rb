
# Define a method that implements a Caesar cipher
def casesar_cipher(string, shiftNum)
    shifted_chars = []
    stringD = string.downcase
    # Create an array of all the letters of the English alphabet
    alphabetArr = ("a".."z").to_a 
    i = 0
    # Loop over each character in the lowercase input string
    while i < stringD.length
      # Get the index of the current character in the alphabet array
      letterIndex = alphabetArr.index(stringD[i]) 
      # If the current character is not a letter, push it to the result array
      if letterIndex.nil?
        shifted_chars.push(stringD[i])
      # If the current character is a letter
      else
        new_index = (letterIndex + shiftNum) % alphabetArr.length
            shifted_chars.push(alphabetArr[new_index])
        end
      i += 1
    end
    answer = shifted_chars.join("")
    j = 0
    while j < string.length
      # If the current character is an uppercase letter,
      # convert the corresponding character in the result string to uppercase
      if string[j].upcase == string[j]
        answer[j] = answer[j].upcase
      end
      j += 1
    end
    # Return the final result string
    return answer
  end
  
  # Call the 'casesar_cipher' method with an input string and a shift number
  p casesar_cipher("What a string!", 5)
  