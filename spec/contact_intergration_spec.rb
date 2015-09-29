# require('capybara/rspec')
# require('./app')
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
#
# describe('adding a new contact', {:type => :feature}) do
#   it('allows a user to click a client to see the stylist for them') do
#     visit('/')
#     click_link('Add New Client')
#     fill_in('name', :with =>'Bob')
#     click_button('Add client')
#     expect(page).to have_content('Success!')
#   end
# end
