class Drug < Sequel::Model(:drugs)
  
  def validate
    super
    validates_unique(:name)
  end
end
