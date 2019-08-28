/**
* @author: Hamilton
 */
public class VisitRepository {

    public List <Visita__c> findByZipCode (String zipCode){
        return  [ SELECT Id, Name, Cep__c, RecordType.Name, 
                         RecordType.DeveloperName
                    FROM visita__c 
                    WHERE Cep__c like : zipCode
                    LIMIT 100  ];
    }

}