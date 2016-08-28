FactoryGirl.define do
  factory :fractal do
    z do
      r = 10 - 20 * rand
      i = 10 - 20 * rand

      "#{r}#{'+' if i > 0}#{i}i"
    end
  end
end
