/**
* @Author: Hamilton
 */
@restResource ( urlMapping='/api/account/*')
global class AccountInboundService {

    webservice
    static Account store (Account account){
        
        return new AccountRepository().save (account);
    }

    @httpPost
    global static Account save (Account account){
        return store(account);
    }     
   }