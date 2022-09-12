class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'unknown', parent_permission: true)
    @id = Random.rand(1..99_999)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    return true if @age >= 18 || parent_permission == true
  end

  private

  def of_age?
    return true if @age >= 18
  end
end
