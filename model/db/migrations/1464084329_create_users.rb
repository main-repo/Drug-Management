#This is the 1st database migration 
Sequel.migration do
  up do
    # Create editors table
    create_table(:editors) do
      primary_key :id
      String :name  
      String :email_id
      String :password
    end
  end
  down do
    # Drop the editors table
    drop_table(:albums_artists)
  end
end