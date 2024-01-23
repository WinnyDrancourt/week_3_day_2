
def day_trader(day)
  positive_comparisons = []
  day.each_with_index do |val1, index1|
    #val1 = val1
    day.each_with_index do |val2, index2|
      if index1 < index2 && val2-val1 > 0
        positive_comparisons << [val2-val1, index1, index2] #val2-val1 = profit, index1 = buying day, index2 = selling day
        end
    end
  end
  if positive_comparisons.length == 0
    return "no possible profit"
  end
  return [positive_comparisons.sort[-1][1],positive_comparisons.sort[-1][2]]
end

