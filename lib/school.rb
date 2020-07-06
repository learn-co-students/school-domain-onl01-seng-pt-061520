class School
  
  attr_accessor
  attr_reader :roster
  def initialize(roster)
    if @roster = roster
      @roster = {}
    end
    
    def add_student(student, grades)
      if @roster.include?grades
        