# code here!

class School
  def initialize(school)
    @school = school
    @roster = {}
  end
  
  attr_reader :roster
  
  def add_student(name, grade)
    if @roster.keys.include?(grade) == false
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end  
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end
  
end