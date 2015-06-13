class Detpedido < ActiveRecord::Base
    belongs_to :plato
    belongs_to :pedido
end
