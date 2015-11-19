require 'Date'
class Person
  
  attr_accessor   :first_name, :last_name,:dob, :fullname, :emailarray, :phonearray
  
  # Initialize instance variables
	def initialize(first_name='haris', last_name='yellow', dob='1 Jan 1990')
    @dob = Date.parse(dob)
    @first_name = first_name
    @last_name = last_name
    @fullname = first_name+' '+last_name
    @emailarray = []
    @phonearray = []
	end
 # Instance methods
   def add_email(email)
    @emailarray << email
   end
   def show_email
    @emailarray.inspect.to_s
   end
   def remove_email(value)
    @emailarray.delete_at(value.to_i)
   end
   def show_phone
    @phonearray.inspect.to_s
   end
   def add_phone(phone)
    @phonearray << phone
   end     
   def remove_phone(value)
    @phonearray.delete_at(value)
   end
   def to_s
    puts "#{first_name}, #{last_name} was born on #{dob}.\\n\ Their email addresses are: \n  #{emailarray} .\\n\ Their phone numbers are #{phonearray}"
   end

   def print_details
    print_title(fullname)
    puts fullname 
    fullname.length.times {print '-'}
    puts "\nDate of Birth: " + dob.strftime('%m %B %Y')+"\n"
    puts "Email Addresses: "
    emailarray.each do |address| puts "- " + address.to_s + "\n"
    end
    puts "\nPhone Numbers: "
    phonearray.each do |number| puts "- " + number.to_s + "\n"
    end
    puts "\n"
    end
  end

class FamilyMember < Person
  attr_accessor :relationship
  def initialize(first_name='haris', last_name='yellow', dob='1 Jan 1990')    
      @relationship=relationship
      super #bubbles up to the parent class.....
  end
end

class AddressBook < Person
  attr_accessor :enterarray
  def initialize(first_name='haris', last_name='yellow', dob='1 Jan 1990')    
  @enterarray = []
  end
  def add(person)
    if person.us_a? Person
    @enterarray << person
  else
    raise "Not the right class"
  end
  def list
    puts 'Address Book'
  'Address Book'.length.times { print '-' }
  enterarray.each.with_index(1) { |name, index| puts "Entry #{index}: " + name.fullname + "\n"}
  end

  private
  def print_title(string)
  "#{string}"
  puts "-" * string.length
  end
end
