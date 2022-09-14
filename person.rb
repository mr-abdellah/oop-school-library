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
    @rentals = []
  end

  def can_use_services?
    return true if @age >= 18 || parent_permission == true
  end

  def correct_name
    @name
  end

  def add_rental(_date, _book)
    @rentals.push(rental)
    @rental.person = self
  end

  private

  def of_age?
    return true if @age >= 18
  end
end

person = Person.new(22, 'maximilianus')
person.correct_name
person.can_use_services?
