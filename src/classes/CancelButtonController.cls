/*
 * キャンセルボタンコンポーネント
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdDate      : 2013/01/01
 * @createdName      : TAIKI,YOSHIKAWA
 * ----------------------------------------
 * @lastModifiedDate : 2013/01/01
 * @lastModifiedName : TAIKI,YOSHIKAWA
 * ----------------------------------------
 */
public with sharing class CancelButtonController {
	
	public String prmCancelButtonLabel {get; set;}
	public PageReference prmReturnUrl {get; set;}
	private static final PageReference DEFAULT_URL = new PageReference('/home/home.jsp');
	
	/*
	 * コンストラクタ
	 * @param	: なし
	 * @return	: なし
	 */
	public CancelButtonController() {
		this.prmCancelButtonLabel = '';
		this.prmReturnUrl = null;
	}
	
	/*
	 * 前ページ遷移
	 * @param	: なし
	 * @return	: 前ページURL
	 */
	public PageReference doReturn() {
		return getReturnUrl(this.prmReturnUrl);
	}
	
	/*
	 * 遷移先URL取得
	 * @param	: 前ページURL		[prmReturnUrl]
	 * @return	: 遷移先URL
	 */
	private PageReference getReturnUrl(PageReference prmReturnUrl) {
		if (prmReturnUrl == null) {
			prmReturnUrl = DEFAULT_URL;
		}
		return prmReturnUrl;
	}
}