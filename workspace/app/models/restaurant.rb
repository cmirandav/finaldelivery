class Restaurant < ActiveRecord::Base
    has_and_belongs_to_many :categorias
    belongs_to :user
    belongs_to :ciudad
    has_many :pedidos
    has_many :platos
end
