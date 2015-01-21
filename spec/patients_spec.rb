require('rspec')
require('spec_buddy')

describe(Patient) do
  describe('#name') do
    it('returns the name of the patient') do
      test_patient = Patient.new({:name => "Bobby Ray", :doctor_id => 1, :birthday => "1995-09-01 00:00:00"})
      expect(test_patient.name()).to(eq("Bobby Ray"))
    end
  end

  describe('#doctor_id') do
    it('returns the doctor id of the patient') do
      test_patient = Patient.new({:name => "Bobby Ray", :doctor_id => 1, :birthday => "1995-09-01 00:00:00"})
      expect(test_patient.doctor_id()).to(eq(1))
    end
  end

  describe('#birthday') do
    it('returns the birthday of the patient') do
      test_patient = Patient.new({:name => "Bobby Ray", :doctor_id => 1, :birthday => "1995-09-01 00:00:00"})
      expect(test_patient.birthday()).to(eq("1995-09-01 00:00:00"))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Patient.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a patient to the array of saved patients') do
      test_patient = Patient.new({:name => "Bobby Ray", :doctor_id => 1, :birthday => "1995-09-01 00:00:00"})
      test_patient.save()
      expect(Patient.all()).to(eq([test_patient]))
    end
  end

  describe("#==") do
    it('is the same patient if it has the same name, doctor ID, and birthday') do
    patient1 = Patient.new({:name => "Bobby Ray", :doctor_id => 1, :birthday => "1995-09-01 00:00:00"})
    patient2 = Patient.new({:name => "Bobby Ray", :doctor_id => 1, :birthday => "1995-09-01 00:00:00"})
    expect(patient1).to(eq(patient2))
    end
  end

end
