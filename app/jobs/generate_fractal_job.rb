class GenerateFractalJob < ApplicationJob
  def perform(fractal_id)
    f = Fractal.find(fractal_id)
    puts f.inspect
  end
end
