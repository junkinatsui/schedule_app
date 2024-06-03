class Schedule < ApplicationRecord
    validates :title, presence: true, length: {maximum: 20}
    validates :start_day, presence: true
    validates :end_day, presence: true
    validates :memo, length: {maximum: 500}
    validate :start_end_check

  def start_end_check
    if start_day.nil? || end_day.nil?
      errors.add(:base, "開始時間と終了時間を設定してください")
    elsif start_day >= end_day
      errors.add(:base, "開始時間は終了時間より前に設定してください")
    end
  end
end
