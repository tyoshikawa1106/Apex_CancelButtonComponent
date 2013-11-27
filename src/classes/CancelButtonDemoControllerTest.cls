/**
 * キャンセルボタンコンポーネント Demo
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
@isTest
private class CancelButtonDemoControllerTest {

    /**
     * コンストラクタ
     */
    static testMethod void CancelButtonDemoControllerTest() {
        
        Test.startTest();
        
        CancelButtonDemoController cls = new CancelButtonDemoController();
        System.assertEquals(String.isEmpty(cls.returnUrl.getUrl()), false);
        
        Test.stopTest();
    }
}