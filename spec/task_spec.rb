require 'taks'

RSpec.describe Task, 'Initialize' do
  context 'Initialize task with Title, description, due_date and status' do
    it 'will check params' do
      task = Task.new (title: 'Wash the dishes', )
    end
  end
end


