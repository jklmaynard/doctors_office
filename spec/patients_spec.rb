require('rspec')
require('spec_buddy')

describe(Patient) do
  describe('#name') do
    it('returns the name of the patient') do
      test_patient = Patient.new({:name => "Bobby Ray", :doctor_id => 1, :birthday => "1995-09-01"})
      expect(test_patient.name()).to(eq("Bobby Ray"))
    end
  end

  describe('#doctor_id') do
    it('returns the doctor id of the patient') do
      test_patient = Patient.new({:name => "Bobby Ray", :doctor_id => 1, :birthday => "1995-09-01"})
      expect(test_patient.doctor_id()).to(eq(1))
    end
  end

  describe('#birthday') do
    it('returns the birthday of the patient') do
      test_patient = Patient.new({:name => "Bobby Ray", :doctor_id => 1, :birthday => "1995-09-01"})
      expect(test_patient.birthday()).to(eq("1995-09-01"))
    end
  end
end
