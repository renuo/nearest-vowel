class Searcher
  VOWELS = %w[a e i o u ä ö ü A E I O U Ä Ö Ü]

  def nearest_vowel(str)
    chars = str.split(//)
    i = 0
    last_vowel = chars.length
    next_vowel = 0

    while i < chars.length
      if VOWELS.include? chars[i]
        last_vowel = 0;
      end

      j = chars.length
      if next_vowel<=0
        while j>i
          if VOWELS.include? chars[j]
            next_vowel = j-i
          end
          j-=1
        end
      end

      if last_vowel>next_vowel && next_vowel>=0
        chars[i] = next_vowel
      else
        chars[i] = last_vowel
      end
      last_vowel+=1
      next_vowel-=1
      i+=1
    end
    chars
  end
end