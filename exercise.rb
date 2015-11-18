require 'Date'
class Person
  
  attr_accessor   :first_name, :last_name,:dob, :fullname, :emailarray, :phonearray
  
  # Initialize instance variables
	def initialize(first_name='haris', last_name='yellow', dob='1 Jan 1990', emailarray=[], phonearray=[])
    @dob = dob
    @first_name = first_name
    @last_name = last_name
    @fullname = first_name+' '+last_name
    @emailarray = emailarray
    @phonearray = phonearray
	end

 # Instance methods
   def add_email(emailarray)
    @emailarray << emailarray
   end
   def show_email
    @emailarray.inspect.to_s
  end
   def add_phone(phonearray)
    @phonearray << phonearray
   end
   def show_phone
    @phonearray.inspect.to_s
   end
   def remove_email(value)
    emailarray.delete_at(value)
   end
   def remove_phone
    @phonearray.inspect
   end
   def to_s
    puts "#{first_name}, #{last_name} was born on #{dob}.\\n\ Their email addresses are: \n  #{emailarray} .\\n\ Their phone numbers are #{phonearray}"
   end

   def print_details
    puts fullname
     fullname.length.times {print '-'}
      d=Date.new(dob)
     d.stftime('%m %B %Y')

     puts "Date of Birth: #{d}"
    end
  end 
