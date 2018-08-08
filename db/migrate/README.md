## ActiveRecord Migration Tips
```db/migrate``` is the directory to place your migration files
___
####  [IMPORTANT] Naming Convention

1. **The migration files should be named with the following format**
    ```<year><month><day><hour><minute><seconds>_<class>.rb```
    ```20180611000000_create_users.rb```
It should follow the current time and date - this rolling timestamp will enable Active Record to know the sequence in which to build your database.


2. **Class name MUST correspond with File name**
    Filename: ```20180713000000_create_listings.rb```
    Contents: 
    ```ruby
    class CreateListings <  ActiveRecord::Migration
    end
    ```

3. **Names should be describe the process you intend to carry out.** 
I.e. When adding a new table for students the file name could be:
    > 20180621000000_create_students.rb
    
