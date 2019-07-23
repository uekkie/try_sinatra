class Cat
  @name = "nyanta"
  attr_reader :name
  def initialize(name)
    @name = name
  end
  def self.tribe
    p "Cat"
  end

  def self.say
    p "meow!"
  end

  def self.name
    @name
  end
end


Cat.tribe
Cat.say
cat = Cat.new("tama")
p cat.name

p Cat.name

# class_evalによる変更
Cat.class_eval do
  def age
    19
  end
end

taro = Cat.new("taro")
p [taro.name, taro.age].join(",")
