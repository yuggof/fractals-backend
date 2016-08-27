require 'rails_helper'

RSpec.describe FractalsController do
  describe 'POST #create' do
    context 'when params are valid' do
      it 'creates a fractal and sends a new job' do
        post :create, params: {c: '0.02-0.02i', z: '0.05+0.3i'}

        expect(response).to have_http_status 201
        expect(JSON.parse(response.body)['id']).to eql Fractal.first.id
        # TODO job
      end
    end

    context 'when params are invalid' do
      it 'does not create a fractal' do
        post :create, params: {}

        expect(response).to have_http_status 422
      end
    end
  end
end
