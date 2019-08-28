/**
* @Author:Hamilton
 */
public  class VisitFilter {

    public List<Visita__c> filterExecutedVisitForAccount (
            List<Visita__c> newVisits,
            Map<Id , Visita__c> oldVisits) {

            List<Visita__c> executedVisits = new List<Visita__c> ();

            for (Visita__c visit : newVisits){

                if (visit.conta__c == null) continue;

                Visita__c oldVisit;

                if (oldVisits != null){
                    oldVisits.get (visit.Id);
                }

                if (oldVisit == null
                    && visit.status__c == 'Realizada'){
                    executedVisits.add (visit);
                    }

                if (Visit.Status__c == 'Realizada'
                   && visit.Status__c != visit.status__c){
                   executedVisits.add (visit);
                   }

                
                executedVisits.add (visit);
            }

            return executedVisits;
    }
}