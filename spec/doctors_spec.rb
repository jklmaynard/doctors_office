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
end
