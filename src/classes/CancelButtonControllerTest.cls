/**
 * キャンセルボタンコンポーネント
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
@isTest
private class CancelButtonControllerTest {
    
    private static final PageReference DEFAULT_URL = new PageReference('/home/home.jsp');
    
    /**
     * コンストラクタ
     */
    static testMethod void CancelButtonControllerTest() {
        
        Test.startTest();
        
        CancelButtonController cls = new CancelButtonController();
        System.assertEquals(cls.prmCancelButtonLabel, '');
        System.assertEquals(cls.prmReturnUrl, null);
        
        Test.stopTest();
    }
    
    /**
     * 前ページ遷移
     * 前ページURLなし
     */
    static testMethod void doReturnTest1() {
        
        Test.startTest();
        
        CancelButtonController cls = new CancelButtonController();
        System.assertEquals(cls.prmCancelButtonLabel, '');
        System.assertEquals(cls.prmReturnUrl, null);
        
        PageReference result = cls.doReturn();
        System.assertEquals(result.getUrl(), DEFAULT_URL.getUrl());
        
        Test.stopTest();
    }
    
    /**
     * 前ページ遷移
     * 前ページURLあり
     */
    static testMethod void doReturnTest2() {
        
        Test.startTest();
        
        CancelButtonController cls = new CancelButtonController();
        System.assertEquals(cls.prmCancelButtonLabel, '');
        System.assertEquals(cls.prmReturnUrl, null);
        
        cls.prmReturnUrl = new PageReference('/apex/SamplePage');
        
        PageReference result = cls.doReturn();
        System.assertEquals(result.getUrl(), new PageReference('/apex/SamplePage').getUrl());
        
        Test.stopTest();
    }
}