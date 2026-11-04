def contains?(hash, search_value)
  # Write a method that recursively searches for a value in a nested hash.
  # It should return `true` if the object contains that value.
  #
  # Examples:
  # contains?({ foo: { bar: "baz" } }, "baz") # true
  # contains?({ foo: { bar: "baz" } }, "egg") # false
  return true if hash.value?(search_value)
  hash.each do |k, v|
    if v.is_a?(Hash)
      return true if contains?(v, search_value)
    end
  end

  false
end
