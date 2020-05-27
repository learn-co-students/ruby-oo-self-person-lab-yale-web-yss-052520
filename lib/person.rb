class Person
    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end 

    attr_reader :name 
    attr_accessor :bank_account 
    attr_reader :happiness
    attr_reader :hygiene 

    def happiness=(happ)
        @happiness = helper_range(happ)
    end 

    def hygiene=(hyg)
        @hygiene = helper_range(hyg)
    end 

    def helper_range(num)
        if num > 10 
            return 10 
        elsif num < 0 
            return 0 
        else return num 
        end 
    end 

    def happy?
        helper_question(@happiness) 
    end 

    def clean? 
        helper_question(@hygiene)  
    end 

    def helper_question(num)
        if num > 7 
            return true 
        else return false 
        end 
    end 

    def get_paid(salary)
        @bank_account += salary 
        "all about the benjamins"
    end 

    def take_bath
        self.hygiene = @hygiene + 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out 
        self.hygiene = @hygiene - 3
        self.happiness = @happiness + 2 
        return "♪ another one bites the dust ♫"
    end 

    def call_friend(person)
        self.happiness = @happiness + 3 
        person.happiness = person.happiness + 3 
        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(person,topic)
        if topic == "politics"
            person.happiness = person.happiness - 2
            self.happiness = @happiness - 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness = person.happiness + 1
            self.happiness = @happiness +1 
            return "blah blah sun blah rain"
        else return "blah blah blah blah blah"
        end 
    end 
end 