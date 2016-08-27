require 'rails_helper'

RSpec.describe GenerateFractalJob do
  describe '#perform' do
    it "generates fractal's image" do
      f = FactoryGirl.create(:fractal)
      gfj = GenerateFractalJob.new

      gfj.perform(f.id)

      f.reload
      expect(f.finished_at).not_to be nil
    end
  end
end
