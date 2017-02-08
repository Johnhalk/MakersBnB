class Space
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :description, Text
  property :price, Integer
  property :created_at, DateTime
  property :rented_by, Integer

  def rented?
    self.rented_by ? true : false
  end

  belongs_to :user
end