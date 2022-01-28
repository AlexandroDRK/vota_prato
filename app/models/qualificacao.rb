class Qualificacao < ApplicationRecord
    validates :nota , :valor_gasto, presence: {message: "Deve ser preenchido"}
    validates :nota , numericality: {greater_than_or_equal_to: 0,less_than_or_equal_to: 10, message: "Deve ser um numero entre 0 e 10"}
    validates :valor_gasto, numericality: {greater_than: 0, message: "Deve ser maior que 0"}
end
