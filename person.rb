require './nameable'
require './capitalize_decorator'
require './timmwe_decorator'


class Person< Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name: 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..900)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def correct_name
    @name
  end
  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
person = Person.new(22, 'maximilianus')
  puts person.correct_name
  capitalizedPerson = CapitalizeDecorator.new(person)
  puts capitalizedPerson.correct_name
  capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
  puts capitalizedTrimmedPerson.correct_name