package model;
import java.io.Serializable;

/**.
 * ユーザー情報を保持するクラス
 */
public class User implements Serializable {
	/**. ユーザー名　*/
	private String name;
	
	/**. パスワード　*/
	private String pass;
	
	/**.
	 * コンストラクタ
	 */
	public User() { }
	public User(String name, String pass) {
		this.name = name;
		this.pass = pass;
	}
	
	/**.
	 * getterメソッド
	 */
	public String getName() { return this.name; }
	public String getPass() { return this.pass; }

}
