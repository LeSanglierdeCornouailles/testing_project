/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 02-16-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger AccountAddressTrigger on Account (before insert) {
    List<Account> acclst=new List<Account>();

    for(account a:trigger.new){
  
      if(a.Match_Billing_Address__c==true && a.BillingPostalCode!=null){
  
      a.ShippingPostalCode=a.BillingPostalCode;
  
      }
  
  }
  
  }