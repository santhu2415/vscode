public class demoobject {
    //  public Integer count;
    public static void getAccountDat(){
        /*  Account acc=[SELECT Id, Name FROM Account where Name = 'srinu'];
List<contact> con = new  List<contact>();
if(acc.id!=null){
for(contact c:con){
c.LastName = 'ramesh';
c.AccountID = acc.id;
con.add(c);
}
if(!con.isEmpty()){
insert con;
}
system.debug(con);
}
List<OPPORTUNITY> opp = [SELECT Id, Name, Description, StageName FROM Opportunity where name Like 'Eshwar'];
if(!opp.isempty()){
for(opportunity op :opp){
if(op.stagename == 'closed won'){
op.Description = 'opportunity ha closed won';

}else 
if(op.StageName =='closed Lost'){
op.Description ='opportunity has closed lost';
}
}
}
if(!opp.isempty()){
update opp;
}
*/
        List<Account> aclist =[SELECT Id, Name ,(select Id, FirstName, LastName FROM Contacts) FROM Account where CreatedDate = THIS_MONTH];
        if(!aclist.isempty()){
            for(Account acc :aclist){
                acc.Total_Contacts__c =acc.Contacts.size();
            }
            if(!aclist.isempty()){
                update aclist;
            }
        }
    }
}