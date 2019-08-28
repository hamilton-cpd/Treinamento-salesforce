/**
*@author:Hamilton
 */
public with sharing class VisitTH extends TriggerHandler {

    List<Visita__c> newVisits;
    Map<Id , Visita__c> oldVisits;

    AccountEnricher accountEnricher;
    VisitFilter filter;

    public VisitTH (){

        this ( (List<Visita__c>) trigger.new,
               (Map<Id, Visita__c>) trigger.oldMap);

    }

    public VisitTH (List<Visita__c> newVisits, Map<Id, Visita__c> oldVisits){
        this.newVisits = newVisits;
        this.oldVisits = oldVisits;

        accountEnricher = new AccountEnricher();
        filter = new VisitFilter();
     }

    override
    public void afterupdate (){
        System.debug(JSON.serialize (newVisits));
        System.debug(JSON.serialize(oldVisits));
    }

    public void enrichAccountWithLastExecutedDate (){
        List<Visita__c> executedVisits = filter.filterExecutedVisitForAccount(newVisits, oldVisits);
        accountEnricher.enricherWithLastExecutedVisit (executedVisits);

    }
}