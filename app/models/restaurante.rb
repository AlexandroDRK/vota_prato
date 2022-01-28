class Restaurante < ApplicationRecord
    validates :nome , :endereco , :especialidade, presence: { message: "Preencher todos os campos"}
    validates :nome , uniqueness: {message: "O nome #{:nome} jâ foi cadastrado"}
end
