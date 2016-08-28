class GenerateFractalJob < ApplicationJob
  def perform(fractal_id)
    f = Fractal.find(fractal_id)

    gfbp = Rails.root.join('bin', 'generate-fractal')
    gfop = Rails.root.join('fractals', "#{f.id}.png")

    `#{gfbp} -o #{gfop}`

    f.update!(finished_at: Time.zone.now)
  end
end
