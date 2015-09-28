# class Greeter
#   attr_accessor :name
#   def initialize(name)
#     @name = name
#   end
#
#   def changeName(name)
#     @name = name
#   end
#
#   def say_hi
#     puts "Hi #{@name}!!"
#     self
#   end
#
#   def say_bye
#     puts "Bye #{@name}!"
#     self
#   end
# end

class MegaGreeter
  attr_accessor :names

  # Create the object
  def initialize(names = "World")
    @names = names
  end

  # Say hi to everybody
  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      # @names is a list of some kind, iterate!
      @names.each do |name|
        puts "Hellos #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  # Say bye to everybody
  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      # Join the list elements with commas
      puts "Goodbye #{@names.join(", ")}.  Come back soon!"
    else
      puts "Goodbye #{@names}.  Come back soon!"
    end
  end

end
