# frozen_string_literal: true

# Raindrops module
module Raindrops
  def self.convert(number)
    return 'Pling' if number == 3

    number.abs.to_s
  end
end
