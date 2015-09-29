require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')
require('pry')

get('/') do
  erb(:index)
end

get('/contacts/new') do
  erb(:contacts_form)
end

get ('/contacts') do
  @contacts = Contact.all()
  erb(:contacts)
end

post ('/contacts') do
  name = params.fetch('name')
  job = params.fetch('job')
  company = params.fetch('company')
  home = params.fetch('home')
  work = params.fetch('work')
  street = params.fetch('street')
  city = params.fetch('city')
  state = params.fetch('state')
  zip = params.fetch('zip')
  workStreet = params.fetch('workStreet')
  workState = params.fetch('workState')
  workZip = params.fetch('workZip')
  workCity = params.fetch('workCity')
  @phone = Phone.new({home: home, work: work})
  @phone.save()
  @phones = Phone.all()
  @address = Address.new({street: street, city: city, state: state, zip: zip, workStreet: workStreet, workCity: workCity, workState: workState, workZip: workZip})
  @address.save()
  @addresses = Address.all()
  @contact = Contact.new({name: name, job: job, company: company})
  @contact.save()
  @contacts = Contact.all()
  erb(:contacts)
end

get ('/contacts/:id') do
  @phone = Phone.find(params.fetch('id').to_i())
  @address = Address.find(params.fetch('id').to_i())
  @contact = Contact.find(params.fetch('id').to_i())
  erb(:contact_profile)
end
