require 'exceptions/invalid_number'
require 'numerals_translator/words_mapping'

module NumeralsTranslator
  def self.translate(number)
    raise InvalidNumber unless number.is_a? Integer

    return "zero" if number == 0

    output = ""
    output << "negative " if number < 0
    output << to_word(number.abs)
  end

  def self.to_word(number)
    NumeralsTranslator::WORDS_MAPPING.each do |unit, word|
      return if number == 0

      return word if (number < 10) && (number/unit > 0)

      if (number < 100) && (number/unit > 0)
        if (number%unit == 0)
          return word
        else
          return "#{word} #{to_word(number%unit)}"
        end
      end

      if (number/unit > 0)
        return "#{to_word(number/unit)} #{word} #{to_word(number%unit)}"
      end
    end
  end
end
