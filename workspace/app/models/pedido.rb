class Pedido < ActiveRecord::Base
    belongs_to :restaurant
    belongs_to :user
    belongs_to :horaentrega
    has_many :detpedidos
    
end
