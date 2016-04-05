# Introduction to Inheritance

# I worked on this challenge [with: Kelson].


# Pseudocode
# First it is important to sort our attributes and methods by class
# Properties: city -LocalCohort 
# students -both
# name -GlobalCohort
# p0_start_date -GlobalCohort
# immersive_start_date -GlobalCohort
# graduation_date  -GlobalCohort
# email_list -GlobalCohort
# num_of_students -both (make this a method)

# Methods: add_student -LocalCohort
# remove_student	-both
# currently_in_phase -GlobalCohort
# graduated? -GlobalCohort

# Initial Solution

class GlobalCohort
	attr_accessor :name, :students, :p0_start_date, :immersive_start_date, :graduation_date, :email_list

  def initialize(name, students, p0_start_date, immersive_start_date, graduation_date, email_list)
  	@name = name
  	@students = students
  	@p0_start_date = p0_start_date
  	@immersive_start_date = immersive_start_date
  	@graduation_date = graduation_date
  	@email_list = email_list
  end	

  def num_of_students
  	@students.count
  end
  
  def remove_student(student)
  	@students.delete(student)
  end
  
  def currently_in_phase
  	if Time.now < @p0_start_date
  		puts "Hasn't started Phase 0"
  	elsif Time.now < @immersive_start_date
  		puts "In Phase 0"
  	elsif Time.now < @graduation_date
  		puts "In Phase 1-3"
  	else
  		puts "Graduated"	
  	end	
  end

  def graduated?
  	Time.now > @graduation_date ? true : false		
  end	

end

class LocalCohort < GlobalCohort
  attr_accessor :city, :students

  def initialize(city, students)
  	@city = city
  	@students = students
  end

  def num_of_students
  	@students.count
  end

  def add_student(student)
  	@students.push(student)
  end	

  def remove_student(student)
  	@students.delete(student)
  end
end


# Refactored Solution

# shortened line 57 with a ternary operator. 

# Reflection

# What concepts did you review in this challenge?
# This challenge led me to learn about inheritance and gave me practice writing classes
# and in using attributes to make attributes in those classes accessible.

# What is still confusing to you about Ruby?
# Luckily this one was pretty straight forward and when I have an example like this handy
# I can make restructure it to work with anything and will eventually have it committed to 
# memory.

# What are you going to study to get more prepared for Phase 1?
# I'm going to write out an example of this on paper to help memorize the structure. 



