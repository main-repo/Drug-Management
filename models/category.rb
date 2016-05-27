class Category < Sequel::Model(:categories)
  
  def validate
    super
    validates_unique(:name)
  end
end