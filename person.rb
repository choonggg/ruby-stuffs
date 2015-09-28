class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def name(value)
    @name = value
    self
  end

  def age(value)
    @age = value
    self
  end

  def introduce
    puts "Hello my name is #{@name}. And I am #{@age} years old."
  end
end
