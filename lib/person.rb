# your code goes here
require 'pry'
# your code goes here
class Person
  # - First you need to create a person class that is initialized with a name that cannot be changed.
  # - Each instance of class `Person`should be able to remember their name
  # - Each instance of  class `Person` should start with $25 in their bank accounts
  # - Each instance of  class `Person` should start with eight happiness points
  # - Each instance of  class `Person` should start with eight hygiene points
  # - The happiness and hygiene points should be able to change, however the maximum and minimum points for both happiness and hygiene should be 10 and  0 respectively
  # - The amount in the bank account should also be able to change, though it has no max or min.
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene


  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

#   def set_limit_10(input,attribut)
#     attribut = input
#     attribut = 10 if input > 10
#     attribut = 0 if input < 0
#   end
  
#   def happiness=(happiness)
#     self.set_limit_10(happiness, self.happiness)
#   end
  
#   def hygiene=(hygiene)
#     self.set_limit_10(hygiene, self.hygiene)
#   end

  def happiness=(happiness)
    @happiness = happiness
    @happiness = 10 if happiness > 10
    @happiness = 0 if happiness < 0
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
    @hygiene = 10 if hygiene > 10
    @hygiene = 0 if hygiene < 0
  end

  #happy?
  def happy?
    if @happiness > 7
        true
    else 
        false
    end
  end

  #clean?
def clean?
    if @hygiene > 7
        true
    else
        false
    end
end

#get_paid
def get_paid(salary)
    @bank_account += salary 
    p "all about the benjamins"
end

  #take_bath
  def take_bath 
    self.hygiene += 4
    p '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  #work_out
  def work_out 
    self.hygiene -= 3
    self.happiness += 2
    p '♪ another one bites the dust ♫'
  end
  #call_friend
  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    p "Hi #{person.name}! It's #{self.name}. How are you?"
  end 


  #start_conversation
  def start_conversation(person, topic)
    case topic 
        when 'politics'
            self.happiness -= 2
            person.happiness -= 2
            p 'blah blah partisan blah lobbyist'
        when 'weather'
            self.happiness += 1
            person.happiness += 1
            'blah blah sun blah rain'
        else 
            p 'blah blah blah blah blah'
        end
    end
end