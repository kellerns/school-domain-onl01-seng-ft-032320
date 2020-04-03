class School
  attr_accessor :name, :roster
  attr_reader   :name, :roster, :grade
  
  def initialize(name)
    @name = name
    @roster = {}
  end
    
  def roster
    @roster
  end
  
  def add_student(name, grade)
    @grade = grade
    @roster.each do |grade, names_array|
      if grade == @grade
        @roster[grade] << name
      end
    end
    @roster[grade] << name
  end
  
  def grade(grade)
    @roster[grade]
  end
    
  def sort
    roster = @roster
    roster.collect do |grade, names|
      names.sort
    end
    roster
  end
  
  
end