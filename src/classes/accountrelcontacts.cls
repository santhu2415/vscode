public class accountrelcontacts {
    public static void acctcon(){ 
        
        /*map<account ,list<contact>> accwithcon =new  map<account ,list<contact>>();
        map<id ,account> accmap =new  map<id ,account>([select Id ,name from Account where Id In(select  Accountid from contact where Accountid!=null)]);
        for(contact con : [select id, accountid from contact where accountid =:accmap.keyset()]){
            if(!accmap.isempty() && accmap.containskey(con.AccountId)){
                account acc = accmap.get(con.AccountId);
                if(accwithcon.containskey(acc)){
                    accwithcon.get(acc).add(con);
                }else{
                    accwithcon.put(acc,new list<contact>{con});
                }
            }
        }
        system.debug('the final map'+accwithcon);*/
        

 


Map<String, List<String>> countryWithStatesMap = new Map<String, List<String>>();

countryWithStatesMap.put('United States', new List<String>{'California','Colorado','Texas'});
countryWithStatesMap.put('India', new List<String>{'Andhra Prdesh','Telangana','Karnataka'});

system.debug('Get countries from countryWithStatesMap ===>'+countryWithStatesMap.keyset());
// o/p: {India, United States}
system.debug('Get States of India ===>'+countryWithStatesMap.get('India'));
// o/p: (Andhra Prdesh, Telangana, Karnataka)
system.debug('Is Srilanka there in Map ===>'+countryWithStatesMap.containsKey('Srilanka')); 
// o/p: false
    }
}