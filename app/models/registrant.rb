class Registrant
	include Mongoid::Document
	include Mongoid::Timestamps

	field :id, type: String
	field :email, type: String
	field :expires_at, type: Time

end

# rails generate model registrant email salt fish name expires_at:datetime code
#bundle exec rails server
#bundle exec rails console
#genghisapp

# r = Registrant.new(seeded values)
# r.save

# alias rkon='bundle exec rails console'
# reload!

# r.destroy

#bundle exec rake db:seed  generally one one for mongo...
#User.all.entries.each { |u| puts u.name}; nil


# rails generate controller site
#       create  app/controllers/site_controller.rb
#       invoke  erb
#       create    app/views/site
#       invoke  helper
#       create    app/helpers/site_helper.rb
#       invoke  assets
#       invoke    js
#       create      app/assets/javascripts/site.js
#       invoke    css
#       create      app/assets/stylesheets/site.css

# SessionController #new #create #destroy
# RegistrationController #edit #update
# PasswordController #edit #update
