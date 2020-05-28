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

  def set_limit_10(input,attribute)
    attr_ref = attribute.to_sym
    Person[attr_ref] = input
    Person[attr_ref] = 10 if input > 10
    Person[attr_ref] = 0 if input < 0
  end

  def happiness=(happiness)
    set_limit_10(happiness, "happiness")
  end

  def hygiene=(hygiene)
    set_limit_10(hygiene, "hygiene")
  end

#Old Method that I could've sworn I tested and it worked
  # def set_limit_10(input,attribute)
  #   Person[attribute.to_sym] = input
  #   Person[attribute.to_sym] = 10 if input > 10
  #   Person[attribute.to_sym] = 0 if input < 0
  # end

  # def happiness=(happiness)
  #   set_limit_10(happiness, "happiness")
  # end
  # def hygiene=(hygiene)
  #   set_limit_10(hygiene, "hygiene")
  # end

#Method to do each one individually, no helper method
  # def happiness=(happiness)
  #   @happiness = happiness
  #   @happiness = 10 if happiness > 10
  #   @happiness = 0 if happiness < 0
  # end
  #
  # def hygiene=(hygiene)
  #   @hygiene = hygiene
  #   @hygiene = 10 if hygiene > 10
  #   @hygiene = 0 if hygiene < 0
  # end

  #hygiene
  #happy?
  #clean?
  #get_paid
  #take_bath
  #work_out
  #call_friend
  #start_conversation

  end
