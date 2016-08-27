class ComplexNumberValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    Complex(value)
  rescue ArgumentError
    record.errors[attribute] << 'is not a complex number'
  end
end
