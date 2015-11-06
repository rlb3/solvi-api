class ChoiceResource < JSONAPI::Resource
  has_one :poll
  attributes :question, :vote_count
end
