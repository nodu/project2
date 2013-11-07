class Gift
	include Mongoid::Document
	include Mongoid::Timestamps # gives created_at and updated_at attributes
	

	belongs_to :user # Many to one relationship
	has_many :avatars, dependent: :delete
	accepts_nested_attributes_for :avatars

 	field :id
	field :category, type: String 
	field :title, type: String
	field :value, type: Integer # (fibonacci?)
	field :description, type: String
	# field :created_on, type: Time  # do I need this one? or does it automatically have the edited/created on attributes?
	# field :picture, type: String # link to flicker?? binary??

	validates :title, presence: true
	validates :description, presence: true
	validates :category, presence: true
	# validates :picture, presence: true
end

