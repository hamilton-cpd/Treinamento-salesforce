/**
* @Author:Hamilton
 */
@isTest
public  class RestProxyTest {

    @isTest
    public static void sendHttpGetTest (){

        String payload = '"UF"';
        Test.SetMock ( HttpCalloutMock.class , new RestProxyMock(payload) );

        RestProxy proxy = new RestProxy (new RestProxy.Configuration ('https://viacep.com.br/ws/','GET'));
        String response = proxy.get ('17580000/json/');
        
        System.assertEquals (payload, response);

    }

    public class RestProxyMock implements HttpCalloutMock {

        String payload;
        public RestProxyMock (String payload){
            this.payload = payload;
        }

        public HttpResponse respond ( HttpRequest request){
            HttpResponse response = new HttpResponse();
            response.setBody (payload);
            return response;
        }
        
        }
    }