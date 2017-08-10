class Array

  def remove_dups
    copy = []

    self.each do |el|
      if !copy.include?(el)
        copy << el
      end
    end
    copy
  end

  def two_sum
    i = 0
    j = i + 1
    result = []
    while i < self.length - 1
      if (self[i] + self[j]) == 0
        result << [i ,j]
      end

      if j == self.length - 1
        i += 1
        j = i + 1
      else
        j += 1
      end
    end
    result
  end

  def my_transpose(arr)

  end
end
