package model;

import java.util.List;


/**.
 * TodoItemインスタンスをショルするクラス
 */
public class TodoItemLogic {
	/**.
	 * TodoItemインスタンスをtodoItemListに追加するメソッド
	 *
	 * @param todoItem TodoItemインスタンス
	 * @param todoItemList TodoItemのList
	 */
	public void add(TodoItem todoItem, List<TodoItem> todoItemList) {
		todoItemList.add(0, todoItem);
	}
	
	/**.
	 * 指定されたファイル名を持つTodoItemインスタンスの身長を更新するメソッド
	 * @param fileName 指定するファイル名
	 * @param todoItemList TodoItemのList
	 */
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
