class Flatten_Arrays
  attr_reader :all

  def self.call(arr, all=[])
    arr.each do |item|
      if item.class != Array
        all << item
      else
        self.call(item, all)
      end
    end
    all
  end
end
