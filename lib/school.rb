# code here!
require "pry"
class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  # def roster=(roster)
  #   @roster = roster
  # end

  def roster
    @roster
  end


  def add_student(name, grade)
    #binding.pry
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
    #binding.pry
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.values.map {|name| name.sort!}
    @roster
  end
end
