## ActiveRecord Migration Tips
This is the directory to place your migration files

#### Naming Convention
1. The migration files should be named with the following format:
```<year><month><day><hour><minute><seconds>_<class>.rb```
```20180611000000_create_users.rb```

2. The name of the class within the migration file should correspond with the name of the migration file.
I.e.
```20180713000000_create_listings.rb```
```ruby
class CreateListings < ActiveRecord
end
```

3. Names should be describe the process you intend to carry out.
I.e. 
Adding a new table for students -> 20180621000000_create_students.rb
Changing a column name for students table -> 20180621000000_alter_students.rb
Removing a column for reservations table -> 20180621000000_remove_reservation_column.rb