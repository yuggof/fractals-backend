class Fractal < ApplicationRecord
  validates :z, presence: true, complex_number: true
  validates :c, presence: true, complex_number: true
end
