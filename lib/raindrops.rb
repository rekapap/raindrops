# frozen_string_literal: true

# Raindrops module
module Raindrops
  PLING = 'Pling'

  def self.convert(number)
    return PLING if (number % 3).zero?

    number.abs.to_s
  end
end
