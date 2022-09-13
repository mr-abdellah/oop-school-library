require_relative './nameable'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1..99_999)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    return true if @age >= 18 || parent_permission == true
  end

  def correct_name
    @name
  end

  private

  def of_age?
    return true if @age >= 18
  end
end

person = Person.new(22, 'maximilianus')
person.correct_name
person.can_use_services?
