class Vitamin < ApplicationRecord
  after_initialize :set_defaults
  belongs_to :user

  validates :user_id,
            presence: true

  validates :name,
            presence: true,
            uniqueness: true

  def set_defaults
    self.active ||= false
    self.required ||= false
    self.unavailable ||= false
  end

end
