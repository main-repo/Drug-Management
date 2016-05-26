Sequel.migration do
  up do
    create_table(:users) do
      String :emailID, :primary_key=>true
      String :name
      String :mobile
      String :password ,:size=>64
    end
  end

  down do
    drop_table(:users)
  end
end