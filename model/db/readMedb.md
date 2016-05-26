step 1:
  #create Database

  login to mysql and give the folowing command
  command:
  source "sql_path"

  example: 
  source /home/hipl/Desktop/project/Drug-Management/model/db/scripts/create_db.sql

Step 2:
  #migrations
  command:
  sequel -m {path to migrations}  mysql://root:hiplsql@localhost/drug_management

  example:
  sequel -m migrations  mysql://root:hiplsql@localhost/drug_management
  (when I was in db directory)
Step 2:
  Alternative


  Open Rakefile
  change sequel connect line according to your database.
  run rackfile as "rake db:migrate