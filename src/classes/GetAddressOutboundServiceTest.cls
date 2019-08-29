/**
* @Author:Hamilton
 */
@isTest
public class GetAddressOutboundServiceTest {

    @isTest
    public static void getAddressByZipCodeTest (){

        ZipCodeAdderess expected = ZipCodeAdderess();
        expected.cep = '17580000';
        expected.logradouro = 'Rua x';
        
        GetAddressOutboundService service = new GetAddressOutboundService();
        service.setProxy(new RestProxyMock(JSON.serialize (expected)));

        ZipCodeAdderess ZipCodeAdderess = service.getAddressByZipCode('17670000');

        System.assertEquals (expected, ZipCodeAdderess);
       
    }

    public class RestProxyMock extends RestProxy {

        String payload;
        public RestProxyMock (String payload){
            
            super(new RestProxy.Configuration ('https://viacep.com.br/ws/','GET'));
            this.payload = payload;
        }
        
        public String get (string path) {
            return payload;
        }

        override
        public String get (String path) {
            return payload;
        }
    }
}