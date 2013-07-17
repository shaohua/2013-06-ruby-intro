require '../src/linked_list.rb'

describe LinkedList do
  before(:each) do
    @linked_list = LinkedList.new
  end

  it "initializes empty" do
    @linked_list.head.should == nil
  end

  describe "#add" do
    it "should add the first item correctly" do
      @linked_list.add('hi')
      @linked_list.contains('hi').should == true
    end

    it "should add other items correctly" do
      @linked_list.add('first item')
      @linked_list.add('second item')
      @linked_list.contains('first item').should == true
      @linked_list.contains('second item').should == true
    end
  end

  describe "#remove" do
    it "should remove items" do
      @linked_list.add('first item')
      @linked_list.contains('first item').should == true
      @linked_list.remove_from_head
      @linked_list.contains('first item').should == false
    end

    it "should remove the last item" do
      @linked_list.add('first item')
      @linked_list.add('second item')
      @linked_list.remove_from_head
      @linked_list.contains('first item').should == false
      @linked_list.contains('second item').should == true
    end
  end

end