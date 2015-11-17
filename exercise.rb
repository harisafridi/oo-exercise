
class Person
  emails = []
  attr_accessor   :first_name, :last_name,:dob, :fullname, :emailarray
  
  # Initialize instance variables
	def initialize(first_name='haris', last_name='yellow', dob='1/1/1990', emailarray=[])
    @dob = dob
    @first_name = first_name
    @last_name = last_name
    @fullname = first_name+' '+last_name
    @emailarray
	end

phonenums= []
 # Instance methods
   def add_email
    puts 'add email'
    emails = [0] 
   end
   def add_phone
    puts 'add phone'
    phonenums = [0] 
   end
   def remove_email
    emails.delete(0)
   end
   def remove_phone
    phonenums.delete(0)
   end

   def phone_numbers
    puts phonenums
   end
   def emails
    puts emails
   end
   def to_s
    puts "#{first_name}, #{last_name} was born on #{dob} "
    puts "their email addresses are: #{emails} and phone numbers: #{phonenums}"
   end
end

class Baby < Person
  attr_accessor :smells
  def initialize(height, hair='None', top='white')    
      @smells=true
      super #bubbles up to the parent class.....
  end
  def cry
    'Wahhhhhhhh'
  end
  
  def dance
    'I am a baby, I cant dance'
  end
  
  def to_s
    if smells
      'I am a baby and i smell'

    else 
      'I m a nic clean'
    end
  end
end

class OldPerson < Person
  attr_accessor :smells
  def initialize(height, hair='None', top='white')    
      @smells=true
      super #bubbles up to the parent class.....
  end
  def to_s
    if smells
      'I am an Old Person and i smell'
    else 
      'I m a nice Old Person'
    end
  end
end


