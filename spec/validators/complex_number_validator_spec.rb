require 'rails_helper'

RSpec.describe ComplexNumberValidator do
  describe '#validate_each' do
    context 'when value is a complex number' do
      it "doesn't set error on the record" do
        cs = [
          '1',
          '1.1',
          'i',
          '1i',
          '1.1i',
          '1.1+1i',
          '1+1.1i',
          '1.1+1.1i'
        ]

        cs.each do |c|
          r = OpenStruct.new(errors: {number: []})
          v = ComplexNumberValidator.new(attributes: {k: :v})

          v.validate_each(r, :number, c)

          expect(r.errors[:number]).to be_empty
        end
      end
    end

    context "when value isn't a complex number" do
      it 'sets error on the record' do
        cs = [
          'n',
          'e1',
          '1 + 1',
          '1+i1',
          '1 +1i'
        ]

        cs.each do |c|
          r = OpenStruct.new(errors: {number: []})
          v = ComplexNumberValidator.new(attributes: {k: :v})

          v.validate_each(r, :number, c)

          expect(r.errors[:number]).not_to be_empty
        end
      end
    end
  end
end
