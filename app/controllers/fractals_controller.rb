class FractalsController < ApplicationController
  def create
    f = Fractal.new(create_params)

    if f.save
      GenerateFractalJob.perform_later(f.id)

      render json: {id: f.id}, status: 201
    else
      render json: f.errors, status: 422
    end
  end

  private

  def create_params
    params.permit(:z)
  end
end
