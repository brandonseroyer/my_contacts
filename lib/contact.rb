class Contact
  attr_reader(:name, :job, :company)

  @@contacts = []

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @job = attributes.fetch(:job)
    @company = attributes.fetch(:company)
    @id = @@contacts.length().+(1)
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |id|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.id().eql?(id)
        found_contact = contact
      end
    end
    found_contact
  end
end

class Address
  attr_reader(:street, :city, :state, :zip, :workStreet, :workCity, :workState, :workZip)

  @@addresses = []

  define_method(:initialize) do |attributes|
    @street = attributes.fetch(:street)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)
    @workStreet = attributes.fetch(:workStreet)
    @workCity = attributes.fetch(:workCity)
    @workState = attributes.fetch(:workState)
    @workZip = attributes.fetch(:workZip)
    @id = @@addresses.length().+(1)
  end

  define_singleton_method(:all) do
    @@addresses
  end

  define_method(:save) do
    @@addresses.push(self)
  end

  define_singleton_method(:clear) do
    @@addresses = []
  end

  define_method(:id) do
    @id.to_i
  end

  define_singleton_method(:find) do |id|
    found_address = nil
    @@addresses.each() do |address|
      if address.id().eql?(id)
        found_address = address
      end
    end
    found_address
  end
end

class Phone
  attr_reader(:home, :work)

  @@phones = []

  define_method(:initialize) do |attributes|
    @home = attributes.fetch(:home)
    @work = attributes.fetch(:work)
    @id = @@phones.length().+(1)
  end

  define_singleton_method(:all) do
    @@phones
  end

  define_method(:save) do
    @@phones.push(self)
  end

  define_singleton_method(:clear) do
    @@phones = []
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |id|
    found_phone = nil
    @@phones.each() do |phone|
      if phone.id().eql?(id)
        found_phone = phone
      end
    end
    found_phone
  end
end
