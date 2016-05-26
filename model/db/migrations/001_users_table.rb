Sequel.migration do
  change do
    create_table(:users) do
      String :emailID, :primary_key=>true
      String :user_name
      String :mobile
      String :password ,:size=>64
    end

    create_table(:categories) do
      primary_key :id
      String :category_name
    end

    create_table(:drugInventory) do
      primary_key :id
      String :drug_name
    end
  end
end
