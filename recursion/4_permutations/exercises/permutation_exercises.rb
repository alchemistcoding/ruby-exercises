def permutations(array)
  # Write a method that takes in an array of integers and returns an array of
  # all possible permutations of the original array. The permutations of a set
  # are the different ways the elements can be arranged.
  #
  # For simplicity, the integers are guaranteed to not repeat.
  #
  # Examples:
  # `permutations([1, 2, 3])` has six different permutations (or ways the elements can be arranged)
  #  it should return `[[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]`
  #
  # `permutations([])` returns `[[]]`, as there's only one arrangement of an empty set
  #
  # NOTE: the tests do not check for ordering, so a return of `[[1, 2], [2, 1]]`
  # will be treated the same as `[[2, 1], [1, 2]]`
  res = []
  per_helper(array, res, 0)
  return res
end

def per_helper(array, result, index)
  if index == array.length
    result.push(array.dup)
    return
  end

  i = index

  while i < array.length
    array[i], array[index] = array[index], array[i]

    per_helper(array, result, index + 1)

    array[index], array[i] = array[i], array[index]

    i += 1
  end
end
