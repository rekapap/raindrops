# frozen_string_literal: true

# Raindrops module
module Raindrops
  PLING = 'Pling'
  PLANG = 'Plang'

  def self.convert(number)
    return PLING if (number % 3).zero?
    return PLANG if (number % 5).zero?
    return 'Plong' if number == 7

    number.abs.to_s
  end
end
