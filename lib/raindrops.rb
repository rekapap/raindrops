# frozen_string_literal: true

# Raindrops module
module Raindrops
  # String 'Pling' for factors of 3
  PLING = 'Pling'
  # String 'Plang' for factors of 5
  PLANG = 'Plang'
  # String 'Plong' for factors of 7
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
