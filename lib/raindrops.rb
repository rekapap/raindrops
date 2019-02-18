# frozen_string_literal: true

# Raindrops module
module Raindrops
  # String 'Pling' for factors of 3
  PLING = 'Pling'
  # String 'Plang' for factors of 5
  PLANG = 'Plang'
  # String 'Plong' for factors of 7
  PLONG = 'Plong'

  ##
  # Returns a new string from an integer input based on these requirements:
  #
  # If the integer number is a factor of 3, output 'Pling'
  #
  # If the number has a factor of 5, output 'Plang'
  #
  # If the number has a factor of 7, output 'Plong'
  #
  # If the number does not have any of the above as a factor
  # simply return the number's digits as a string.

  def self.convert(number)
    text = ''
    text += PLING if (number % 3).zero?
    text += PLANG if (number % 5).zero?
    text += PLONG if (number % 7).zero?

    return number.abs.to_s if text.empty?

    text
  end
end
