/**
* @author: Hamilton
 */

public class AccountEnricher {

    AccountRepository repository;

    public AccountEnricher(){
        repository = new AccountRepository();
    }
    
    public List<Account> enricherWithLastExecutedVisit ( List<Visita__c> executedVisits) {

        
        Map<Id, Account> accounts = new Map<Id, Account>();

        for (Visita__c visit : executedVisits) {
            
            Account account = new Account (Id = visit.Conta__c,
                                          DataUtimaVisitaRealizada__c = visit.DataVisita__c);

            accounts.put (visit.Conta__c, account);
        }
        return repository.save (accounts.values());
        
    }

}