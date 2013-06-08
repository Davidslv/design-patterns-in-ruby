# We can create our own singleton by hand or we can include 
# the Singleton module to do all the heavy work for us:
#
#   - creates the class variable
#   - initializes it with the singleton instance
#   - creates the class level `instance` method
#   - makes the `new` method private
#   - waits until somone calls `instance` method before it creates its singleton
#
# How to know if is a eager class?
# ObjectSpace.each_object(Logger){} 
# will return 1 if is a eager class and 0 if not


class MySingleton

  # eager instantiation
  # - Creates an instance before any client calls
  # @@instance = MySingleton.new

  def self.instance
    @@instance ||= new
  end

  private_class_method :new
end
