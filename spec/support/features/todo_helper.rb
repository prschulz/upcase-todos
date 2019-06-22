module Features
  def create_todo(todo_title)
    click_on "Add a new todo"
    fill_in "Title", with: todo_title
    click_on "Submit"
  end

  def have_todo(todo_title)
    have_css('.todos li', text: todo_title)
  end

  def have_completed_todo(todo_title)
    have_css('.todos li.completed', text: todo_title)
  end

end
