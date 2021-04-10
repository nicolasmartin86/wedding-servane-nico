require 'csv'

class Guest < ApplicationRecord
    validates :first_name, :last_name, :address, presence: true
    validates :email, uniqueness: false, format: /\A[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*\z/


    def self.to_csv(options)
        CSV.generate(options) do |csv|
            csv << column_names
            all.each do |guest|
              csv << guest.attributes.values_at(*column_names)
            end
        end
    end

end
