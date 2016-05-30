class Category < Sequel::Model(:categories)
  many_to_many :drugs

  def validate
    super
    validates_unique(:name)
  end
end