# code here!
class School 
  def initialize(school)
    @school = school 
    @roster = {}
  end 
  
  attr_accessor :school 
  attr_reader :roster
  
  
  def add_student(student, grade)
    if !@roster.include?(grade)
      @roster[grade] = [student] 
    else 
      @roster[grade] << student
    end  
    @roster 
  end 

  def grade (grd)
    @roster[grd]
  end 
  def sort
    a = @roster.sort_by{|k,v| k}
    @roster = {}
    a.each do |a,b|
      @roster[a] = b.sort 
    end 
    @roster
  end 
end 