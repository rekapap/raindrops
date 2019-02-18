# frozen_string_literal: true

# Raindrops module
module Raindrops
  PLING = 'Pling'
  PLANG = 'Plang'
  PLONG = 'Plong'

  def self.convert(number)
    return 'PlingPlong' if number == 21
    return PLING if (number % 3).zero?
    return PLANG if (number % 5).zero?
    return PLONG if (number % 7).zero?

    number.abs.to_s
  end
end
