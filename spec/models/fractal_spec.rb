require 'rails_helper'

RSpec.describe Fractal do
  it 'has a valid factory' do
    expect { FactoryGirl.create(:fractal) }.to change { Fractal.count }.by 1
  end
end
