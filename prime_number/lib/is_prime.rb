class Is_Prime
  attr_reader :all

  def self(num)
    for i in 2..num-1
      if num % i == 0
        is_prime = false
      end
    end
  end
end
