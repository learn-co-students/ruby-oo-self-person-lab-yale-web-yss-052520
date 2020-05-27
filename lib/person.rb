# your code goes here
class Person
attr_reader :name, :happiness, :hygiene

attr_accessor :bank_account 

def initialize(name)
    @bank_account = 25 
    @happiness = 8 
    @hygiene = 8 
    @name = name
end 

def happiness=(value)
    @happiness = value
    if self.happiness > 10
        self.happiness = 10
    elsif self.happiness < 0
        self.happiness = 0
    end
end

def hygiene=(value)
    @hygiene = value
    if self.hygiene > 10
        self.hygiene = 10
    elsif self.hygiene< 0
        self.hygiene = 0
    end
end

def clean?
    self.hygiene > 7 
end 

def happy?
    self.happiness > 7
end 

def get_paid(salary)
    self.bank_account += salary 
    return "all about the benjamins"
end 

def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
end 

# def check_valid
#    if self.hygiene > 10 
#     self.hygiene = 10
#    elsif self.hygiene < 0
#     self.hygiene = 0
#    end
#    if self.happiness > 10
#     self.happiness = 10
#    elsif self.happiness < 0
#     self.happiness = 0
#    end
# end 

def work_out
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
end

def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(person, topic)
    if topic == "politics"
        self.happiness -= 2
        person.happiness -= 2
        return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        self.happiness += 1
        person.happiness += 1
        return "blah blah sun blah rain"
    else
        return "blah blah blah blah blah"
    end
end
end 