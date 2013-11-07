module SecureRandomId
  extend ActiveSupport::Concern
  
  # Depricated in favor of Mongoid ID's 
  # This module shares functionality/concerns! with all models 
  included do
    before_create :set_random_id
  end

  module ClassMethods
  	def do_something
  	end
  end

  def set_random_id
		self.id = SecureRandom.urlsafe_base64
	end
end