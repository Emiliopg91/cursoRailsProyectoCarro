class Articulo < ActiveRecord::Base
  def self.get_articulos
    order("nombre ASC").all
  end
end
