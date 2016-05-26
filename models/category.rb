class Category < Sequel::Model(:categories)
  
  def validate
    super
    validates_unique(:category_name)
  end
end