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

  def remove_from_tail
    if(tail)
      # tail
    end
  end

  def contains(value)
    current_node = @head
    flag = current_node.contains(value)
    while(current_node.next and !flag)
      current_node = current_node.next
      flag = current_node.contains(value)
      break if flag
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
