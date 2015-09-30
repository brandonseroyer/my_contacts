require('rspec')
require('contact')

describe(Contact) do
  before() do
    Contact.clear()
  end

  describe('#name') do
    it('returns the contact name') do
      test_contact = Contact.new({:name => "Joe Little", :job => "Mailman", :company => "US Postal Service"})
      expect(test_contact.name()).to(eq("Joe Little"))
    end
  end

  describe('#job') do
    it('returns the contact job') do
      test_contact = Contact.new({:name => "Joe Little", :job => "Mailman", :company => "US Postal Service"})
      expect(test_contact.job()).to(eq("Mailman"))
    end
  end

  describe('#company') do
    it('returns the contact company') do
      test_contact = Contact.new({:name => "Joe Little", :job => "Mailman", :company => "US Postal Service"})
      expect(test_contact.company()).to(eq("US Postal Service"))
    end
  end
end

describe(Address) do

  describe('#street') do
    it('returns the address street') do
      test_address = Address.new({:street => "57 Barnes Rd.", :city => "Portland", :state => "Oregon", :zip => "97210", :number => "5031234567", :workStreet => "23 Jordan Ln.", :workCity => "Beaverton", :workState => "Oregon", :workZip => "97005"})
      expect(test_address.street()).to(eq("57 Barnes Rd."))
    end
  end

  describe('#city') do
    it('returns the address city') do
      test_address = Address.new({:street => "57 Barnes Rd.", :city => "Portland", :state => "Oregon", :zip => "97210", :number => "5031234567", :workStreet => "23 Jordan Ln.", :workCity => "Beaverton", :workState => "Oregon", :workZip => "97005"})
      expect(test_address.city()).to(eq("Portland"))
    end
  end

  describe('#state') do
    it('returns the address state') do
      test_address = Address.new({:street => "57 Barnes Rd.", :city => "Portland", :state => "Oregon", :zip => "97210", :number => "5031234567", :workStreet => "23 Jordan Ln.", :workCity => "Beaverton", :workState => "Oregon", :workZip => "97005"})
      expect(test_address.state()).to(eq("Oregon"))
    end
  end

  describe('#zip') do
    it('returns the address zip') do
      test_address = Address.new({:street => "57 Barnes Rd.", :city => "Portland", :state => "Oregon", :zip => "97210", :number => "5031234567", :workStreet => "23 Jordan Ln.", :workCity => "Beaverton", :workState => "Oregon", :workZip => "97005"})
      expect(test_address.zip()).to(eq("97210"))
    end
  end

  describe('#WorkStreet') do
    it('returns the address street') do
      test_address = Address.new({:street => "57 Barnes Rd.", :city => "Portland", :state => "Oregon", :zip => "97210", :number => "5031234567", :workStreet => "23 Jordan Ln.", :workCity => "Beaverton", :workState => "Oregon", :workZip => "97005"})
      expect(test_address.workStreet()).to(eq("23 Jordan Ln."))
    end
  end

  describe('#WorkCity') do
    it('returns the address city') do
      test_address = Address.new({:street => "57 Barnes Rd.", :city => "Portland", :state => "Oregon", :zip => "97210", :number => "5031234567", :workStreet => "23 Jordan Ln.", :workCity => "Beaverton", :workState => "Oregon", :workZip => "97005"})
      expect(test_address.workCity()).to(eq("Beaverton"))
    end
  end
  describe('#WorkState') do
    it('returns the address state') do
      test_address = Address.new({:street => "57 Barnes Rd.", :city => "Portland", :state => "Oregon", :zip => "97210", :number => "5031234567", :workStreet => "23 Jordan Ln.", :workCity => "Beaverton", :workState => "Oregon", :workZip => "97005"})
      expect(test_address.workState()).to(eq("Oregon"))
    end
  end

  describe('#WorkZip') do
    it('returns the address zip') do
      test_address = Address.new({:street => "57 Barnes Rd.", :city => "Portland", :state => "Oregon", :zip => "97210", :number => "5031234567", :workStreet => "23 Jordan Ln.", :workCity => "Beaverton", :workState => "Oregon", :workZip => "97005"})
      expect(test_address.workZip()).to(eq("97005"))
    end
  end
end

describe(Phone) do

  describe('#home') do
    it('returns the home phone number') do
      test_phone = Phone.new({:home => "5038062572", :work => "5037899989"})
      expect(test_phone.home()).to(eq("5038062572"))
    end
  end

  describe('#work') do
    it('returns the work phone number') do
      test_phone = Phone.new({:home => "5038062572", :work => "5037899989"})
      expect(test_phone.work()).to(eq("5037899989"))
    end
  end
end
