/**
 * キャンセルボタンコンポーネント
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
public with sharing class CancelButtonController {
    
    public String prmCancelButtonLabel {get; set;}
    public PageReference prmReturnUrl {get; set;}
    
    private static final PageReference DEFAULT_URL = new PageReference('/home/home.jsp');
    
    /**
     * コンストラクタ
     */
    public CancelButtonController() {
        this.prmCancelButtonLabel = '';
        this.prmReturnUrl = null;
    }
    
    /**
     * 前ページ遷移
     * @param    : none
     * @return   : 遷移先URL
     */
    public PageReference doReturn() {
        return getReturnUrl(this.prmReturnUrl);
    }
    
    /**
     * 遷移先URL取得
     * @param    : 前ページURL        [prmReturnUrl]
     * @return   : 遷移先URL
     */
    private PageReference getReturnUrl(PageReference prmReturnUrl) {
        return prmReturnUrl == null ? DEFAULT_URL : prmReturnUrl;
    }
}