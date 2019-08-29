/**
* @Author:Hamilton
 */
public class GetAddressOutboundService {

    RestProxy proxy;

    public GetAddressOutboundService(){
        proxy = new RestProxy (new RestProxy.Configuration ('https://viacep.com.br/ws/','GET'));

    }


    public ZipCodeAddress getAddressByZipCode (String zipcode){

        
        String payload = proxy.get (zipcode + '/json/');

        return (ZipCodeAddress) JSON.deserialize (payload, ZipCodeAddress.class);

    }

    public void setProxy (RestSetProxy proxy){
        this.proxy = proxy;

    }
}