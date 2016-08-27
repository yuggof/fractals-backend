class ComplexNumberValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    Complex(value) if value.present?
  rescue ArgumentError
    record.errors[attribute] << 'is not a complex number'
  end
end
