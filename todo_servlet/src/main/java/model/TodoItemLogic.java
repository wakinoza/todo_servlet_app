package model;

import java.util.List;

public class TodoItemLogic {
	public void add(TodoItem todoItem, List<TodoItem> todoItemList) {
		todoItemList.add(0, todoItem);
	}
	
	public void updateProgress(String fileName, List<TodoItem> todoItemList) {
		for (int i  = 0; i < todoItemList.size(); i++) {
			TodoItem cuttentTodo = todoItemList.get(i);
			if(cuttentTodo.getFileName().equals(fileName)) {
				if (cuttentTodo.getProgress() == Progress.PENDING) {
					cuttentTodo.setProgress(Progress.IN_PROGRESS);
				} else if (cuttentTodo.getProgress() == Progress.IN_PROGRESS) {
					cuttentTodo.setProgress(Progress.COMPLETED);
				} else {
					todoItemList.remove(i);
				}
				break;
			}
		}
	}

}
