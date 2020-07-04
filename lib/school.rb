require 'pry'
class School
  attr_reader:name, :roster
    
  def initialize(school_name)
      @school_name = school_name
      @roster = {}
  end
  def add_student(name, grade)
    if @roster.has_key?(grade)
       @roster[grade]  << name
    else
      @roster[grade]=[name]
    end
  end
  
  def grade(grade) 
      @roster[grade]
  end
  
  def sort
      self.roster.each do |grade,students|
           students.sort!
     end
  end
      
end