class Restaurante < ApplicationRecord
    validates :nome , :endereco , :especialidade, presence: { message: "Preencher todos os campos"}
    validates :nome , uniqueness: {message: "O nome #{:nome} jâ foi cadastrado"}
    def self.to_csv
      attributes = %w{nome endereco especialidade}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |user|
        csv << attributes.map{ |attr| user.send(attr) }
      end
    end
  end
end

