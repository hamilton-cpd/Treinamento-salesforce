/**
* @author: Hamilton
 */

@isTest
private class VisitRepositoryTest {

    @isTest
    public static void findByZipCodeTest () {

        Visita__c visit = VisitFixtureFactory.create ('1222343');

        VisitRepository repository = new VisitRepository();

        repository.findByZipCode ('122%');

        List<Visita__c> visits = repository.findByZipCode ('122%');

        System.assert (!visits.isEmpty());
        System.assertEquals (visit.Id , visits.get(0).Id);

    }

}