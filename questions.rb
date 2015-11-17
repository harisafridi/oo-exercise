Question 1. Write a new Person class that implements the following interface:  
person = Person.new("joe", "bloggs", "1 Jan 1990") # The date should be optional person.dob # => A Date object person.first_name # => "Joe" person.surname # => "Bloggs" person.fullname # => "Joe Bloggs"  
person.emails # => [] person.add_email "joe@foo.com" person.add_email "joe.bloggs@work.com"  
person.emails # => ["joe@foo.com", "joe.bloggs@work.com"]  
person.phone_numbers # => [] person.add_phone "07712345678" person.add_phone "02012345678"  
person.phone_numbers # => ["07712345678", "02012345678"]  
person.remove_email(0) person.emails # => ["joe.bloggs@work.com"]  
person.to_s # => "Joe Bloggs was born on 1990-01-01.\n Their email addresses are: [\"joe@foo.com\"].\n Their phone numbers are [\"07712345678\", \"02012345678\"]"   
Additional Constraints: • Emails should be stored in an array, so should phone numbers. • It should not be possible to change the emails or phone numbers arrays except using the add_email, add_phone, remove_email and remove_phone methods. • The Array method delete_at might be useful.     
Question 2. Add a print_details method that prints out the details of the person, and then lists their emails and phone numbers on separate lines. You should use the Array method each. The stftime Date method might be useful. Here’s a suggested output format:  
Joe Bloggs ---------- Date of Birth: 01 January 1