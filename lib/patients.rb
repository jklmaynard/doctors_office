class Patient

  attr_reader(:name, :doctor_id, :birthday)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @doctor_id = attributes.fetch(:doctor_id)
    @birthday = attributes.fetch(:birthday)
  end 
end
