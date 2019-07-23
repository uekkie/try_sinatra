# Foo = Class.new do |c|
#   def c.foo
#     p "foo!!!"
#   end
# end

class Foo
  class << self
    def foo
      p "foo@@@"
    end
  end

  def Foo.bar
    p "bar:::"
  end
end

# Foo.foo

# class method
Foo.foo
Foo.bar
