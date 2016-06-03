require 'exceptions/invalid_number'
require 'numerals_translator/words_mapping'

module NumeralsTranslator
  def self.translate(number)
    raise InvalidNumber unless number.is_a? Integer
  end
end
