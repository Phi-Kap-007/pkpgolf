# Argument must be a positive integer
# Take every individual integer of num & multiply them
  # if result >= 10, multiply new num until result < 10

def persistence(num)
  if num < 10
    return 0
  else
    return 1 + persistence(num.to_s.chars.inject(1) { |n, c| n * c.to_i })
  end
end

