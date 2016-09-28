class WordSortService

  def find_sequences(word)

    # Get word length minus 4 (because we know the word is more than 4 char long)
    # and we don't want to try collect letters that aren't there
    length = word.length - 4

    # Split word into array so we can work with it
    word_array = word.chars

    # Empty array for us to put the new words as we get them
    new_sequences = []

    # Loop through word to get 4 letter combinations
    for i in 0..length
      new_sequence = []

      # Determine the end of the new letter combination
      word_end = i + 3

      # Loop through each letter of new combination
      for j in i..word_end
        new_sequence.push(word_array[j])
      end

      new_sequences.push(new_sequence.join(''))
    end

    return new_sequences
  end

  def find_duplicates(sequence, sorted)

    # Check to see if there are duplicates
    if sorted.flatten.include? sequence

      count = 0

      # Loop through sorted
      sorted.each do |array|

        # Remove current sequence if appears at all in sorted
        if array.include? sequence
          sorted.delete_at(count)
        end
        count += 1
      end

      # Return sorted without duplicates
      return sorted
    else

      # Return nothing in the case that no duplicates are found
      return
    end
  end
end
