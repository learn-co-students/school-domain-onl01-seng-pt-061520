
class School

attr_accessor:name, :roster

 def initialize (name)
   @name = name
   @roster = {}
 end 
 
 def add_student (name,grade)
    roster[grade] ||= []
    roster[grade] << name
 end 
 
 def grade(grade)
    roster.each do |g, n| 
      if g == grade
        return n 
      end 
    end 
 end
 
def sort 
  new_hash = {}
  roster.each do |g, n| 
    new_hash[g] = n.sort 
  end 
  new_hash
end 
end 