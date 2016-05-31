module NumeralsTranslatorCases
  INVALID = [
    '.', '@', nil, true, false, '-', '+', 1.23, 'abcd'
  ]

  VALID = [
    [-123798, "negative one hundred twenty three thousand seven hundred ninety eight"],
    [--100, "one hundred"],
    [-100, "negative one hundred"],
    [-99, "negative ninety nine"],
    [0, "zero"],
    [1, "one"],
    [11, "eleven"],
    [53, "fifty three"],
    [100, "one hundred"],
    [101, "one hundred one"],
    [111, "one hundred eleven"],
    [1000, "one thousand"],
    [6847, "six thousand eight hundred forty seven"],
    [98326215, "ninety eight million three hundred twenty six thousand two hundred fifteen"]
  ]
end
