require('rspec')
require('spec_buddy')

describe(Doctor) do
  describe("#name") do
    it('returns the name of the doctor') do
      test_doctor = Doctor.new({:name => "David Tennant", :specialty => "Converse", :id => nil })
      expect(test_doctor.name()).to(eq("David Tennant"))
    end
  end

  describe("#specialty") do
    it('returns the specialty of the doctor') do
      test_doctor = Doctor.new({:name => "David Tennant", :specialty => "Converse", :id => nil })
      expect(test_doctor.specialty()).to(eq("Converse"))
    end
  end

  describe('.all') do
    it('lists all doctors; is empty at first') do
      expect(Doctor.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a new doctor to the list of doctors') do
      test_doctor = Doctor.new({:name => "David Tennant", :specialty => "Converse", :id => nil })
      test_doctor.save()
      expect(Doctor.all()).to(eq([test_doctor]))
    end
  end

  describe('#==') do
    it('is the same doctor if it has the same name & specialty') do
      doctor1 = Doctor.new({:name => "David Tennant", :specialty => "Converse", :id => nil})
      doctor2 = Doctor.new({:name => "David Tennant", :specialty => "Converse", :id => nil})
      expect(doctor1).to(eq(doctor2))
    end
  end

  describe('#patients') do
    it('returns an array of patients for a single doctor') do
      test_doctor = Doctor.new({:name => "Tom Baker", :specialty => "scarf", :id => nil})
      test_doctor.save()
      patient1 = Patient.new({:name => "Bobby Ray", :doctor_id => test_doctor.id(), :birthday => "1995-09-01 00:00:00"})
      patient1.save()
      patient2 = Patient.new({:name => "Bobby Bee", :doctor_id => test_doctor.id(), :birthday => "1998-05-01 00:00:00"})
      patient2.save()
      expect(test_doctor.patients()).to(eq([patient1, patient2]))
    end
  end

end
