public class lstaccount {
    public static void act (){/*
        list<account> lstacc = [select id ,name from account limit 10];
        set<id> setaccid = new  set<id>();
        list<contact> lstcon =[select accountid,lastname from contact limit 10];
        for(contact cont: lstcon){
            setaccid.add(cont.accountid);
            map<id,account> mapacc =new map<id,account>();
            List<Account> lstAccount = [select id,name from Account limit 10];
*/

        Set<Id> setAccId = new Set<ID>();
        List<Contact> lstCont = [select accountID,FirstName,lastName from contact limit 10];
        For(Contact cont: lstCont)
        {
            setAccId.add(cont.accountID); 
        }         
        Map<Id,Account> mapAcc = new Map<Id,Account>( [ select id,name from Account where id in :setAccId ] );      
        For(Contact cont: lstCont)
        {
            if( mapAcc.containsKey(cont.accountID) ) 
            {
                Account acc = mapAcc.get(cont.accountID);
                System.debug('Account------------>'+acc);      
            }
        }
    }     
}