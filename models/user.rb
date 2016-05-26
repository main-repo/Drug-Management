class User < Sequel::Model(:users)
  unrestrict_primary_key
  def validate
    super
    validates_unique(:emailID)
  end
end
