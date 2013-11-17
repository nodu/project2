class Message
  include Mongoid::Document
  include Mongoid::Timestamps
  
  belongs_to :gift
  belongs_to :user
  
  field :sent_from, type: String
  field :message, type: String

end
