# Generate users's data
python3 ./generate-users-csv.py

# Delete users from table llx_user before importing new users
./delete_users.sh

# Insert users's date to users's table
./import_csv.sh
