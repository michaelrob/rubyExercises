class Flatten_Arrays
  attr_reader :all

  def flatten_nested_arrays(arr, all=[])
    arr.each do |item|
      if item.class != Array
        all << item
      else
        flatten_nested_arrays(item, all)
      end
    end
    all
  end
end
