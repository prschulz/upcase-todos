require 'rails_helper'

describe Todo, "#completed?" do
  it "returns true if completed_at is set" do
    todo = Todo.new(completed_at: Time.now)

    expect(todo).to be_completed
  end

  it "returns false if completed_at is nil" do
    todo = Todo.new(completed_at: nil)

    expect(todo).to_not be_completed
  end

end
