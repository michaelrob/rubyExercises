class Is_Prime
  attr_reader :all

  def self.call(num)
    for i in 2..num-1
      if num % i == 0
        is_prime = false
      else
        return true
      end
    end
  end
end
