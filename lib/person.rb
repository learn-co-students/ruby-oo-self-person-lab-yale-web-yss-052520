# your code goes here
require 'pry'

class Person  
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    
    def initialize(name)
        @name = name 
        @bank_account = 25 
        @happiness = 8
        @hygiene = 8
    end  
    
    def happiness=(happiness)
        if happiness >= 0 && happiness <= 10 
            @happiness = happiness
        elsif happiness < 0 
            @happiness = 0 
        elsif happiness > 10 
            @happiness = 10
        end
        return @happiness 
    end
    
    def hygiene=(hygiene)
        if hygiene >= 0 && hygiene <= 10 
            @hygiene = hygiene
        elsif hygiene < 0 
            @hygiene = 0 
        elsif hygiene > 10 
            @hygiene = 10 
        end 
        return @hygiene 
    end 
    
    def happy?
      if @happiness > 7 
        # binding.pry
        return true
      else
        # binding.pry
        return false
      end
    end
    
    def clean?
      if @hygiene > 7 
        return true
      else
        return false
      end
    end
    
    def get_paid(salary)
      @bank_account += salary
      return "all about the benjamins"
    end
    
    def take_bath
      self.hygiene= (@hygiene + 4)
      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out
      self.happiness = (@happiness + 2)
      self.hygiene = (@hygiene - 3)
      return "♪ another one bites the dust ♫"
    end 
    
    def call_friend(friend)
      self.happiness = (@happiness + 3)
      friend.happiness = (friend.happiness + 3)
      return "Hi #{friend.name}! It's #{@name}. How are you?"
    end
    
    def start_conversation(person, topic)
      if topic == "politics"
        self.happiness = (@happiness - 2)
        person.happiness = (person.happiness - 2)
        return "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        self.happiness = (@happiness + 1)
        person.happiness = (person.happiness + 1)
        return "blah blah sun blah rain"
      else
        return "blah blah blah blah blah"
      end
    end
end