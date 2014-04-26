def replace(array, from, to)
  array.each_with_index do |e, i|
    array[i] = to if e == from
  end
end
