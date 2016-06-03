require_relative'exceptions/invalid_number'
require_relative 'numerals_translator/words_mapping'

module NumeralsTranslator
  def self.translate(number)
    raise InvalidNumber unless number.to_s =~ NumeralsTranslator::VALID_NUMERAL
    number = number.to_i

    return "zero" if number == 0

    "#{prefix(number)}#{to_word(number.abs)}".strip
  end

  def self.prefix(number)
    "negative " if number < 0
  end

  def self.to_word(number)
    NumeralsTranslator::WORDS_MAPPING.each do |unit, word|
      return if number == 0

      div, mod = number.divmod(unit)

      return word if (number < 10) && (div > 0)

      if (number < 100) && (div > 0)
        return (mod == 0) ? word : "#{word} #{to_word(mod)}"
      end

      return "#{to_word(div)} #{word} #{to_word(mod)}" if (div > 0)
    end
  end
end
