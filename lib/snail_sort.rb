# Adds snail-sort method to array
class Array
  def snail_sort
    # for special cases like empty array, or invalid matrix for snail sorting
    raise "INVALID MATRIX" unless self.is_valid_matrix?
    return [] if self.insides_empty?


    sorted = []
    width, height = self[0].length, self.length

    # get the top of our matrix
    (0...(width - 1)).each do |i|
      sorted.push(self[0][0])
      self[0].delete_at(0)
    end

    # get the right side of matrix
    (0..(height - 1)).each do |i|
        sorted.push(self[i].last)
        self[i].delete_at(-1)
    end

    # get bottom side of matrix
    (0...(width - 1)).each do |i|
      sorted.push(self[-1][-1])
      self[-1].delete_at(-1)
    end

    # get left side of matrix
     (2..(height - 1)).each do |i|
      sorted.push(self[-i].first)
      self[-i].delete_at(0)
    end

    # [1...-1] delete empty arrays at top and bottom of matrix
    sorted.concat((self[1...-1].compact.snail_sort)) unless self.insides_empty?

    return sorted
  end

  # to check if arrays inside array are empty
  def insides_empty?
    is_empty = true
    self.each do |part|
      if part.any?
        is_empty = false
      end
    end
    return is_empty
  end

  # to check if matrix is valid for snail sort
  def is_valid_matrix?
    # check if matrix
    self.each do |subarray|
      return false if subarray.class != Array
    end

    # check for valid form
    width = self[0].length
    self[1..-1].each do |subarray|
        return false if width != subarray.length
    end
  end
end
