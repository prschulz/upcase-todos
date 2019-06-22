class Todo < ApplicationRecord

  def completed?
    completed_at.present?
  end
end
