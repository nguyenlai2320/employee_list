class Employee < ApplicationRecord
    validates :employee_id, presence: true, length: {maximum: 6}
    validates :firstname, presence: true, length: {maximum: 30}
    validates :lastname, presence: true, length: {maximum: 30}
    validates :phone, presence: true, length: {maximum:30}
    validates :email, presence: true, length: {maximum: 50}
    validates :position, presence: true, length: {maximum:30}

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "email", "employee_id", "firstname", "id", "lastname", "phone", "position", "updated_at"]
    end
end
