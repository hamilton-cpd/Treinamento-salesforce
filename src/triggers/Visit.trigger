/**
* @author : Hamilton 
 */

trigger Visit on Visita__c (before insert, before update, after insert, after update) {


    new VisitTH().run();
    
  
  /*
    List<Visita__c>  newVisits = Trigger.new; 
    Map<Id, Visita__c> oldVisits = Trigger.oldMap;

    System.debug (JSON.serialize (newVisits));

    if (oldVisits != null){
        System.debug (JSON.serialize (oldVisits));
    }

    if  (trigger.operationType == TriggerOperation.BEFORE_UPDATE){
        system.debug('Visita__c on BEFORE_UPDATE');
    }

    if  (trigger.operationType == TriggerOperation.BEFORE_INSERT){
        system.debug('Visita__c on BEFORE_INSERT');
    }

    if  (trigger.operationType == TriggerOperation.AFTER_UPDATE){
        system.debug('Visita__c on AFTER_UPDATE');
    }

    if  (trigger.operationType == TriggerOperation.BEFORE_UPDATE){
        system.debug('Visita__c on BEFORE_UPDATE');
    }

*/


}