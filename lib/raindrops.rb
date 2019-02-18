# frozen_string_literal: true

# Raindrops module
module Raindrops
  PLING = 'Pling'
  PLANG = 'Plang'
  PLONG = 'Plong'

  def self.convert(number)
    text = ''
    text += PLING if (number % 3).zero?
    text += PLANG if (number % 5).zero?
    text += PLONG if (number % 7).zero?

    return number.abs.to_s if text.empty?

    text
  end
end
