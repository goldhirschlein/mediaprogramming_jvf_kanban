describe Category, :type => :model do
  it "is should have a name" do
    Category.create(name: 'Rails Project')
  end
  it "has many tasks" do
    have_many :tasks
  end
end



#describe CategoriesController, :type => :controller do
