class Schedule < ApplicationRecord
    validates :title, presence: true, length: {maximum: 20}
    validates :start_day, presence: true
    validates :end_day, presence: true
    validates :memo, length: {maximum: 500}
    validate :start_end_check

  def start_end_check
    errors.add(:end_day, "は開始日より前の日付は登録できません。") unless
    self.start_day < self.end_day 
  end
end
