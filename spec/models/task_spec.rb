require 'rails_helper'

RSpec.describe Task, type: :model do
  before do
    @task = Task.new(project_id: 1, user_id: 1, name: "Task 1")
  end

  subject{ @task }

  it { should respond_to{ :project_id } }
  it { should respond_to{ :user_id } }
  it { should respond_to{ :name } }
  it { should respond_to{ :projects} }
  it { should respond_to{ :user } }
end
