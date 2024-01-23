def word_counter(string, dictionnary)
    string = string.downcase
    word_c = Hash.new
    dictionnary.each do |word|
        unless string.scan(/(?=#{word})/).count == 0
        word_c[word] = string.scan(/(?=#{word})/).count
        end
    end
    return word_c
end

