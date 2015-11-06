class PollResource < JSONAPI::Resource
  has_one :user
  has_many :choices
  attributes :name, :slug
  after_create :add_current_user

  def add_current_user
    _model.user = context[:current_user]
    _model.save
  end

  def self.records(options = {})
    context = options[:context]
    context[:current_user].polls
  end
end
