require "pp"

class Object
  def local_methods
    (methods - Object.methods).sort
  end
end
