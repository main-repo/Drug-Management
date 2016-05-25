class Category < Sequel::Model(:categories)
  
  def validate
    super
    validates_unique(:catName)
  end
end