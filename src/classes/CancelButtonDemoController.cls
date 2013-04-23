/*
 * キャンセルボタンコンポーネントデモ
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdDate      : 2013/01/01
 * @createdName      : TAIKI,YOSHIKAWA
 * ----------------------------------------
 * @lastModifiedDate : 2013/01/01
 * @lastModifiedName : TAIKI,YOSHIKAWA
 * ----------------------------------------
 */
public with sharing class CancelButtonDemoController {
	
	public PageReference returnUrl {get; set;}
	
	/*
	 * コンストラクタ
	 * @param	: なし
	 * @return	: なし
	 */
	public CancelButtonDemoController() {	
		this.returnUrl = new PageReference('/ui/setup/Setup?setupid=PersonalSetup');
		//this.returnUrl = null;
	}
}