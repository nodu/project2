class Avatar
	include Mongoid::Document
	include Mongoid::Timestamps
	

	# attr_accessible :avatar, :avatar_cache
	belongs_to :gift

	field :id 
	# field :title, type: String
	# field :description, type: String

	mount_uploader :image, AvatarUploader

end