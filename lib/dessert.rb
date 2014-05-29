class Dessert
  attr_accessor :name, :calories
  
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    true if @calories < 200
  end
  
  def delicious?
    if @flavor == "licorice" 
      false
    else 
      true
    end
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(flavor)
    @flavor = flavor
  end
  
  def calories
    5
  end
  
  def name
    @name = @flavor + " jelly bean"
  end
  
end
