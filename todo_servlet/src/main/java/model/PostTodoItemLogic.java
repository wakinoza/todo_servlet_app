package model;

import java.util.List;

public class PostTodoItemLogic {
	public void execute(TodoItem todoItem, List<TodoItem> todoItemList) {
		todoItemList.add(0, todoItem);
	}

}
