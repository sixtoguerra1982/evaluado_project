class Project < ApplicationRecord

    validates :name, presence: true
    validates :description, presence: true

    enum state: [:propuesta , :en_progreso , :terminado]

    def self.load
        20.times do |i|
            Project.create(
                name: Faker::Company.name,
                description: Faker::Company.catch_phrase,
                date_begin: Time.now,
                date_end: Time.now + 3.days
            )
        end

    end

end
