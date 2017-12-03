describe Task, :type => :model do
  it "is should have a name" do
    Task.create(name: 'do tasks')
  end
  it "is should have a description" do
    Task.create(name: 'this is a description')
  end
  it "should be published" do
    expect(true).to be_boolean
  end
  it "should belong to a category" do
    #expect(task).to belong_to :category
    belongs_to :category
  end
  it "should update a category" do
    @category = Category.find(params[:id])
    put :update, id: @category
  end
end
