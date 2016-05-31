require 'exceptions/invalid_number'

module NumeralsTranslator
  def self.translate(number)
    raise InvalidNumber unless number.is_a? Integer
  end
end
