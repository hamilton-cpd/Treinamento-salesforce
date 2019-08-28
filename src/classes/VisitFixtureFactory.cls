/**
* @author: Hamilton
 */
@isTest
public class VisitFixtureFactory {

    /*
        Visita__c visit = new Visita__c();
        visit.Endereco__c = 'Rua das Acacias';
        visit.Bairro__c = 'Bairro Centro';
        visit.Cep__c = '17580000';
        visit.Cidade__c = 'Pompeia';

        insert visit;
    */

    public static Visita__c buildVisit ( String zipCode) {
        
        Visita__c visit = new Visita__c();
        visit.Endereco__c = 'Rua das Acacias';
        visit.Bairro__c = 'Bairro Centro';
        visit.Cep__c = '17580000';
        visit.Cidade__c = 'Pompeia';

        return visit;

    }

    public static Visita__c create (String zipCode) {
        return create (buildVisit(zipCode) );
    }

    public static Visita__c create ( Visita__c visit) {

        insert visit;

        return visit;

    }
}

