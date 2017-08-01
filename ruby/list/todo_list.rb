class TodoList

  def initialize (x)
   @chore = x
  end

  def get_items
   @chore
  end

  def add_item(item)
    @chore << item
  end

  def delete_item(item)
    @chore.delete(item)
  end

  def get_item(index)
    @chore[index]
  end
end