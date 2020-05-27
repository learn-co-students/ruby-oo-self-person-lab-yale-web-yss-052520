# your code goes here
require 'pry'

class Person

  attr_accessor :bank_account

  attr_reader :name, :happiness, :hygiene


  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  # def happiness=(happiness)
  #   if happiness < 0
  #     @happiness = 0
  #   elsif happiness > 10
  #     @happiness = 10
  #   else
  #   @happiness = happiness 
  #   end
  # end

  def happiness=(happiness)
    @happiness = overunder(happiness)
  end

  def hygiene=(hygiene)
    @hygiene = overunder(hygiene)
  end

  def overunder(num)
    if num < 0
      return 0
    elsif num > 10
      return 10
    else
      num
    end
  end

  def happy?
    self.happiness>7
  end

  def clean?
    self.hygiene>7
  end

  def get_paid(salary)
    @bank_account+=salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene+=4
    return '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    self.hygiene-=3
    self.happiness+=2
    return '♪ another one bites the dust ♫'
  end

  def call_friend(friend)
    self.happiness+=3
    friend.happiness+=3
    #"Hi #{callee.name}! It's #{caller.name}. How are you?"
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  def start_conversation(friend, topic)
    if topic=="politics"
        friend.happiness-=2
        self.happiness-=2
        return 'blah blah partisan blah lobbyist'
    elsif
        topic=="weather"
        friend.happiness+=1
        self.happiness+=1
        return 'blah blah sun blah rain'
    else
        return 'blah blah blah blah blah'
    end
  end

end
