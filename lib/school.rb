class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end
  def grade(grade_given)
    @roster[grade_given]
  end
  def sort
    sorted_roster = {}
    @roster.each do |key, value|
      sorted_roster[key] = value.sort
    end
    sorted_roster
end
end
