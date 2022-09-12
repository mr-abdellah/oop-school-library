require './person'

class Student < person
  def initialize(classroom)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    puts "¯\(ツ)/¯"
  end
end
