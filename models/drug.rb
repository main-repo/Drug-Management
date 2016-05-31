class Drug < Sequel::Model(:drugs)
  many_to_many :categories

  def validate
    super
    validates_unique(:name)
  end
end

class Categories_drugs < Sequel::Model

end