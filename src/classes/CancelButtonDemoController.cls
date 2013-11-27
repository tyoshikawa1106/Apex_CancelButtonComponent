/**
 * キャンセルボタンコンポーネント Demo
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
public with sharing class CancelButtonDemoController {
    
    public PageReference returnUrl {get; set;}
    
    /**
     * コンストラクタ
     */
    public CancelButtonDemoController() {   
        this.returnUrl = new PageReference('/ui/setup/Setup?setupid=PersonalSetup');
        this.returnUrl = null;
    }
}