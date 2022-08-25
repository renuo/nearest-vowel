#Nice little challenge to learn ruby :)
class Searcher
  VOWELS = %w[a e i o u ä ö ü A E I O U Ä Ö Ü]

  def nearest_vowel(str)
    chars = str.split(//)
    last_vowel = chars.length
    next_vowel = 0

    for i in 0..chars.length-1
      if VOWELS.include? chars[i]
        last_vowel = 0;
      end

      if next_vowel <= 0
        #Reverse for-loop
        for j in -(chars.length-1)..-i
          j = -j
          if VOWELS.include? chars[j]
            next_vowel = j - i
          end
        end
      end

      if last_vowel > next_vowel && next_vowel >= 0
        chars[i] = next_vowel
      else
        chars[i] = last_vowel
      end
      last_vowel += 1
      next_vowel -= 1
    end

    chars
  end
end