class UserResource < JSONAPI::Resource
  has_many :polls
  attribute :email
end
