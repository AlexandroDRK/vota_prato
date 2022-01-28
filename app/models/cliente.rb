class Cliente < ApplicationRecord
    validates :nome , :idade , presence: {message: "Preencha todos os campos"}
    validates :nome , uniqueness: {message: "#{:nome} já foi cadastrado"}
end
