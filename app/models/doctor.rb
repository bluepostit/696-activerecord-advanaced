class Doctor < ActiveRecord::Base
  # Associations:
  has_many :interns
  has_many :consultations
  has_many :patients, through: :consultations

  # Validations:
  validates :last_name, presence: true,
                        uniqueness: { scope: :first_name }
end
