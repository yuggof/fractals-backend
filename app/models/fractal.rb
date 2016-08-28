class Fractal < ApplicationRecord
  validates :z, presence: true, complex_number: true
end
