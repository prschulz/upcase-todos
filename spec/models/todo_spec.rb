require 'rails_helper'

describe Todo, "#completed?" do
  it "returns true if completed_at is set" do
    user = User.create!(email: "peter@peter.com", password: "password")
    todo = Todo.new(completed_at: Time.now, user_id: user.id)

    expect(todo).to be_completed
  end

  it "returns false if completed_at is nil" do
    todo = Todo.new(completed_at: nil)

    expect(todo).to_not be_completed
  end
end

describe Todo, "#complete!" do
  it "updates completed_at" do
    user = User.create!(email: "peter@peter.com", password: "password")
    todo = Todo.create!(completed_at: nil, user_id: user.id)

    todo.complete!

    todo.reload

    expect(todo).to be_completed
  end
end

  describe Todo, "#mark_incomplete!" do
    it "removes completed_at" do
      user = User.create!(email: "peter@peter.com", password: "password")
      todo = Todo.create!(completed_at: nil, user_id: user.id )

      todo.complete!
      todo.mark_incomplete!

      todo.reload

      expect(todo).to_not be_completed
    end
  end
