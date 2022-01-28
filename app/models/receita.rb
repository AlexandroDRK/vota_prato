class Receita < ApplicationRecord
    validates :conteudo , presence: {message: "Deve ser preenchido"}
end
