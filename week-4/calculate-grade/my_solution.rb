# Calculate a Grade

# I worked on this challenge with: Kelson.


# Your Solution Below

def get_grade(average)
  grade = average.to_i
  if grade >= 90
    p 'A'
  elsif grade >= 80
    p 'B'
  elsif grade >= 70
    p 'C'
  elsif grade >= 60
    p 'D'
  else
    p 'F'
  end
  
end

