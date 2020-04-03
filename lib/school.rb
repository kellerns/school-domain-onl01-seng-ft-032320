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
    key_array = @roster.keys.sort
    i = 0
    sort_roster = @roster
    sorted_list = {}
    while i < key_array.length
      sorted_list[key_array[i]] = sort_roster[key_array[i]].sort
    end
  end
  
  
end