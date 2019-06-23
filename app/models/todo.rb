class Todo < ApplicationRecord
  belongs_to :user

  def completed?
    completed_at.present?
  end

  def complete!
    touch :completed_at
  end

  def mark_incomplete!
    update_column :completed_at, nil
  end
end
