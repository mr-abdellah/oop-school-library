class Rental
  attr_accessor :date
  attr_reader :person, :book

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
  end

  def book=(book)
    @book = book
    book.rentals.push(self) unless book.rental.include?(self)
  end

  def person=(person)
    @person = person
    person.rentals.push(self) unless person.rental.include?(self)
  end
end
