require 'pry'

class Person
attr_accessor :bank_account, :happiness, :hygiene
attr_reader :name
def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8

end

def happiness
    @happiness #getter 
end

def happiness=(happiness)
    @happiness = happiness #setter
    if @happiness > 10
        @happiness = 10
    else if @happiness < 0
    @happiness = 0
else 
    @happiness
    end
end

def hygiene
@hygiene
end


def hygiene=(hygiene)
    @hygiene = hygiene
 if @hygiene > 10
    @hygiene = 10
 else if @hygiene < 0
    @hygiene = 0
else 
 @hygiene
    end
end

def bank_account
    @bank_account
end

def clean?
    if @hygiene > 7
        return true
    else
        return false
    end
end

def happy?
    if @happiness > 7
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
     self.hygiene += 4 #why this works not the other way
     return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{name}. How are you?"

    end

    def start_conversation(friend,topic)
    if topic == "politics"
        self.happiness -= 2
        friend.happiness -= 2
    return "blah blah partisan blah lobbyist"
    else if topic == "weather"
    self.happiness += 1
    friend.happiness += 1
    return "blah blah sun blah rain"
    else
        return "blah blah blah blah blah"
    end
end

    

end

end

end
end
