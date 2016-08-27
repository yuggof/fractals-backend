class GenerateFractalJob < ApplicationJob
  def perform(fractal_id)
    f = Fractal.find(fractal_id)
    f.update!(finished_at: Time.zone.now)
  end
end
