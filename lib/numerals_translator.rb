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
  end
end
