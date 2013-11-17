class User
	include Mongoid::Document
	include Mongoid::Timestamps
	

	attr_accessor :password, :password_confirmation

	has_many :gifts
	has_many :messages
	
	field :id, type: String

	field :name, type: String
	field :email, type: String

	field :salt, type: String
	field :fish, type: String

	field :code, type: String
	field :expires_at, type: Time

	before_save :encrypt_password

	validates :email, presence: true
	validates :email, uniqueness: {case_sensitive: false}
	validates :password, confirmation: true

	# before_update
	# before_create
	# before_destroy
	# before_validation

	def authenticate(password)
		self.fish == BCrypt::Engine.hash_secret(password, self.salt)
	end

	private

	def encrypt_password
		# unless password.blank?
			# some code to run
		# end
		if password.present?  # active support, patches ruby with things.  present? is one
			self.salt = BCrypt::Engine.generate_salt
			self.fish = BCrypt::Engine.hash_secret(password, self.salt)
		end
	end
end

