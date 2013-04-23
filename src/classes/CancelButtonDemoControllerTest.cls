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
@isTest
private class CancelButtonDemoControllerTest {

    /*
	 * コンストラクタ・テスト
	 */
	static testMethod void CancelButtonDemoControllerTest() {
        System.debug('◆◆◆◆CancelButtonDemoControllerTest:START');
        
        CancelButtonDemoController cls = new CancelButtonDemoController();
        System.assertEquals(String.isEmpty(cls.returnUrl.getUrl()), false);
        
        System.debug('◆◆◆◆CancelButtonDemoControllerTest:END');
    }
}