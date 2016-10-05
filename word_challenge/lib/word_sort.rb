require 'pry'
require_relative 'word_sort_service'
# Write a program which, given a dictionary, generates two output files, 'sequences'
# and 'words'. 'sequences' should contain every sequence of four letters that appears
# in exactly one word of the dictionary, one sequence per line. 'words' should contain
# the corresponding words that contain the sequences, in the same order, again one
# per line.

class WordSort
  def self.call(dictionary)
    sort_service = WordSortService.new
    sorted = []

    # Convert dictionary string into array
    dictionary = dictionary.split(/\n+/)

    dictionary.each do |word|
      if word.length == 4
        sort_service.find_duplicates(word, sorted) || sorted.push([word, word])
      elsif word.length < 4
        next
      else
        new_sequences = sort_service.find_sequences(word)
        new_sequences.each do |sequence|
          sort_service.find_duplicates(sequence, sorted) || sorted.push([word, sequence])
        end
      end
    end

    return sorted
  end
end
