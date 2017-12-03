describe Task, :type => :model do
  subject {
    Task.new(
      name: "task_name",
      description: "task_description",
      category_id: 1
    )
  }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a description" do
      subject.description = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a category" do
      subject.category_id = nil
      expect(subject).to_not be_valid
    end
  end

  describe "Associations" do
    it {should belong_to(:category)}
  end
#  it "is should have a name" do
#    Task.create(name: 'do tasks')
#  end
#  it "is should have a description" do
#    Task.create(description: 'this is a description')
#  end
#  #check if publiched is set
#  it "should be published" do
#    expect(true).to be_boolean
#  end
#  it "should belong to a category" do
#    #expect(task).to belong_to :category
#    belongs_to :category
#  end
#  it "should update a category" do
#    @category = Category.find(params[:id])
#    put :update, id: @category
#  end
end
