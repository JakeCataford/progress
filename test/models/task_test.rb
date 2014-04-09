require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test "should add user as an owner" do
    task = tasks(:simple)
    task.owner = users(:valid)
    assert task.save
  end

  test "should add user as a requester" do
    task = tasks(:simple)
    task.requester = users(:valid)
    assert task.save
  end

  test "should add task to project" do
    task = tasks(:simple)
    task.project = projects(:one)
    assert task.save
  end

  test "should add task under task, making it a category." do
    task = tasks(:simple)
    task.children.create({ title: "test child."})
    assert task.save, "Task should have saved."
    assert task.has_children?, "Task should have children."
  end
end
