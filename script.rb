
# Define a method that implements a Caesar cipher
def casesar_cipher(string, shiftNum)

    
    result1 = []
  
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
        result1.push(stringD[i])
      # If the current character is a letter
      else
        # If the shifted index is greater than the length of the alphabet array,
        # wrap it around to the beginning of the array
        if letterIndex + shiftNum > alphabetArr.length
          newIndex = (letterIndex + shiftNum) - alphabetArr.length
          result1.push(alphabetArr[newIndex])
        # Otherwise, push the letter at the shifted index to the result array
        else
          result1.push(alphabetArr[letterIndex + shiftNum])
        end
      end
      i += 1
    end

    answer = result1.join("")

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
  