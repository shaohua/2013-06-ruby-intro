class LinkedList

  def initialize
    @head = nil
    @tail = nil
  end

  attr_accessor :head, :tail

  def add(value)
    newNode = LinkedListNode.new(value)
    if head == nil
      @tail = @head = newNode
    else
      @tail.next = newNode
      @tail = newNode
    end
  end

  def remove_from_head
    if(@head)
      if(@head.next)
        @head = @head.next
      else
        @head = @tail = nil
      end
    end
  end

  def contains(value)
    #when the list is empty, return false
    if(@head == nil)
      return false
    end

    node = @head
    flag = node.contains(value)
    while(node.next and !flag)
      node = node.next
      flag = node.contains(value)
    end
    return flag
  end

end


class LinkedListNode
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end

  def contains(value)
    @value == value
  end

end
