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
@isTest
private class CancelButtonControllerTest {
	
	private static final PageReference DEFAULT_URL = new PageReference('/home/home.jsp');
	
	/*
	 * コンストラクタ・テスト
	 */
	static testMethod void CancelButtonControllerTest() {
        System.debug('◆◆◆◆CancelButtonControllerTest:START');
        
        CancelButtonController cls = new CancelButtonController();
        System.assertEquals(cls.prmCancelButtonLabel, '');
        System.assertEquals(cls.prmReturnUrl, null);
        
        System.debug('◆◆◆◆CancelButtonControllerTest:END');
    }
    
    /*
	 * 前ページ遷移・テスト
	 * 前ページURLなし
	 */
	static testMethod void doReturnTest1() {
        System.debug('◆◆◆◆doReturnTest1:START');
        
        CancelButtonController cls = new CancelButtonController();
        System.assertEquals(cls.prmCancelButtonLabel, '');
        System.assertEquals(cls.prmReturnUrl, null);
        
        PageReference result = cls.doReturn();
        System.assertEquals(result.getUrl(), DEFAULT_URL.getUrl());
        
        System.debug('◆◆◆◆doReturnTest1:END');
    }
    
    /*
	 * 前ページ遷移・テスト
	 * 前ページURLあり
	 */
	static testMethod void doReturnTest2() {
        System.debug('◆◆◆◆doReturnTest2:START');
        
        CancelButtonController cls = new CancelButtonController();
        System.assertEquals(cls.prmCancelButtonLabel, '');
        System.assertEquals(cls.prmReturnUrl, null);
        
        cls.prmReturnUrl = new PageReference('/apex/SamplePage');
        
        PageReference result = cls.doReturn();
        System.assertEquals(result.getUrl(), new PageReference('/apex/SamplePage').getUrl());
        
        System.debug('◆◆◆◆doReturnTest2:END');
    }
}