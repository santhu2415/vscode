public class maps {
    public static void opp(){
        /*   List<opportunity> opplist =new List<opportunity>();
List<opportunity> opp =[SELECT Id, Name, OrderNumber__c FROM Opportunity where OrderNumber__c =null ];
for(opportunity op :opp){
op.OrderNumber__c = '234561';
opplist.add(op);
}
update opplist;
system.debug('opplist'+opplist);*/
        List<opportunity> opplist =new List<opportunity>();
        List<Account> ac =[SELECT Id, Name FROM Account WHERE CreatedDate = THIS_YEAR];
        if(ac.size()>0){
            for(Account acc :ac){
                opportunity opp = new opportunity();
                opp.name =acc.name;
                opp.closedate =system.today();
                opp.stagename ='prospecting';
                opp.Accountid =acc.id;
                opplist.add(opp);
            }
        }
        if(opplist.size()>0){
            insert opplist;
        }
    }
}