module Enumerable
  def my_each
    cont = 0
    until cont == size
      yield self[cont]
      cont += 1
    end
    self
  end

  def my_each_with_index
    i = 0
    until i == size
      yield self[i], i
      i += 1
    end
    self
  end

  def my_select
    i = 0
    new_arr = []
    until i == size
      new_arr << self[i] if yield self[i]
      i += 1
    end
    new_arr
  end
end
