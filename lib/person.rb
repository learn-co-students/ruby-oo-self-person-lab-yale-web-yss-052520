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

    # We write our own setter methods for happiness and hygiene 
    # to ensure that the max value is 10 and the min value is 0. 
    def happiness=(amt)
        if amt > 10
            @happiness = 10
        elsif amt < 0
            @happiness = 0
        else 
            @happiness = amt
        end 
    end

    def hygiene=(amt)
        if amt> 10
            @hygiene = 10
        elsif amt < 0
            @hygiene = 0
        else 
            @hygiene = amt
        end 
    end

    def clean?
        self.hygiene > 7
    end 

    def happy? 
        self.happiness > 7
    end 

    def get_paid(amt)
        self.bank_account += amt #invoking the setter method created by the attribute macro
        "all about the benjamins"
    end 

    def take_bath
        self.hygiene = self.hygiene + 4 #invoking the setter method we explicitly wrote
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.happiness = self.happiness + 2
        self.hygiene = self.hygiene - 3
        "♪ another one bites the dust ♫"
    end 

    # Parameter person is an instance of the Person class
    # We can therefore invoke the associated getter and setter methods. 
    def call_friend(person)
        person.happiness = person.happiness + 3
        self.happiness = self.happiness + 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end 

    # Method implements some simple logic statements using if, elsif, else. 
    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness = person.happiness - 2
            self.happiness = self.happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness = person.happiness + 1
            self.happiness = self.happiness + 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end 