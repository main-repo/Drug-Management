class User < Sequel::Model(:users)
  
  def validate
    super
    validates_unique(:email)
  end
end
