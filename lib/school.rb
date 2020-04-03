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
    if @roster.empty?
      @roster[grade] = [name]
    elsif @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
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