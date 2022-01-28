class Prato < ApplicationRecord
    validates :nome , presence: {message: "Deve ser preenchido"}
    validates :nome , uniqueness: {message: "Nome ja cadastrado"}
end
