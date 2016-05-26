class Drug < Sequel::Model(:drugInventory)
  
  def validate
    super
    validates_unique(:drug_name)
  end
end
