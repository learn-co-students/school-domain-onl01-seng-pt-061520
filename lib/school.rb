class School

  attr_reader :name, :roster


  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] = [] if @roster[grade] == nil
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    students_alphabetical_order = {}
    @roster.each do |grade, student_list|
      students_alphabetical_order[grade] = student_list.sort
    end
    students_alphabetical_order
  end

end
