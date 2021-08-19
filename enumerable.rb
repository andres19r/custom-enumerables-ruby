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

  def my_all?
    i = 0
    until i == size
      return false unless yield self[i]

      i += 1
    end
    true
  end

  def my_any?
    i = 0
    until i == size
      return true if yield self[i]

      i += 1
    end
    false
  end

  def my_none?
    i = 0
    until i == size
      return false if yield self[i]

      i += 1
    end
    true
  end

  def my_count(arg = nil)
    unless arg.nil?
      c = 0
      my_each do |el|
        c += 1 if el == arg
      end
      return c
    end
    if block_given?
      i = 0
      count = 0
      until i == size
        count += 1 if yield self[i]
        i += 1
      end
      count
    else
      size
    end
  end

  def my_map
    new_arr = []
    my_each do |el|
      new_arr << yield(el)
    end
    new_arr
  end
end
