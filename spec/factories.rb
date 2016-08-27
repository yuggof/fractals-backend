def complex_number
  r = 10 - 20 * rand
  i = 10 - 20 * rand

  "#{r}#{'+' if i > 0}#{i}i"
end

FactoryGirl.define do
  factory :fractal do
    z { complex_number }
    c { complex_number }
  end
end
