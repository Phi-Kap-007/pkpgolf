def sort_by_length(arr)
  arr = arr.sort_by {|x| x.length}
  #arr.each { |x, y| length << x.length }
end

p sort_by_length(["bro", "greatness", "anticommunist", "blast", "mast"])

