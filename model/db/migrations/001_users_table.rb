Sequel.migration do
  change do
    create_table(:users) do
      primary_key :id
      String :email
      String :name
      String :mobile ,:size=>10
      String :password ,:size=>64
    end

    create_table :sales do
      primary_key :id
      integer :order_id
      String :name 
      integer :quantity,:size=>10
      integer :price
    end

    create_table :categories do
      primary_key :id
      String :name
    end

    create_table :drugs do
      primary_key :id
      String :name
      integer :quantity,:size=>10
      integer :price,:size=>8
    end

    create_join_table(:drug_id=>:drugs, :category_id=>:categories)
  end
end
Status API Training Shop Blog About
