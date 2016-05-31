require 'spec_helper'

describe 'Numerals Translator' do
  require_relative 'cases/numerals_translator_cases'

  NumeralsTranslatorCases::INVALID.each do |invalid_case|
    it "should raise exception `invalid number` if user passed #{invalid_case}" do
      expect { NumeralsTranslator.translate(invalid_case) }.
        to raise_error(InvalidNumber)
    end
  end

  NumeralsTranslatorCases::VALID.each do |number, text|
    it "should return `#{text}` if user passed `#{number}`" do
      expect( NumeralsTranslator.translate(number) ).
        to eq(text)
    end
  end
end
