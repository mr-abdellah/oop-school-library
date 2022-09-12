class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'unknown', _parent_permission: true)
    @id = Random.rand(1..99_999)
    @name = name
    @age = age
  end

  private

  def of_age?
    return true if @age >= 18
  end

  public

  def can_use_services?
    return true if @age >= 18 or parent_permission == true
  end
end
