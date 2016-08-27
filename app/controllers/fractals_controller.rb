class FractalsController < ApplicationController
  def create
    f = Fractal.new(create_params)

    if f.save
      render json: {id: f.id}, status: 201
    else
      render json: f.errors, status: 422
    end
  end

  private

  def create_params
    params.permit(:c, :z)
  end
end
