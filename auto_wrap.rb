class AutoWrap

    def get_result words, maxCol
        final_result = []
        current_text = ""
        texts = []
        words.each do |word|
            if current_text.length + word.length + 1 > maxCol
                final_result.push(current_text)
                texts = []
            end
            texts.push(word)
            current_text = texts.join(" ")
        end
        final_result.push(current_text) if texts.length > 0
        final_result
    end

    def wrap text, maxColumn
        maxCol = maxColumn.to_i
        words = text.split(' ')
        current_texts = []
        current_texts = get_result words, maxCol
        current_texts.join("\n")
    end

end
