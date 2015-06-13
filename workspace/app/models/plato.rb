class Plato < ActiveRecord::Base
    belongs_to :tipoplato
    belongs_to :restaurant
    has_many :detpedidos
end
