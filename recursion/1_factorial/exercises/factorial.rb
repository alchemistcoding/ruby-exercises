def factorial(num)
  return nil if num < 0
  if num == 1 || num == 0
    return 1
  else return num * factorial(num - 1)
  end
end
