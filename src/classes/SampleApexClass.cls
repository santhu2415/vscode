public class SampleApexClass {
    /* public static void createOppOnAccount(){
//List<Account> accList = [SELECT Id, Name FROM Account WHERE CreatedDate = THIS_YEAR];
List<opportunity> oppToBeCreated = new List<opportunity>();

// if(accList.size() > 0){
for(Account acc : [SELECT Id, Name FROM Account WHERE CreatedDate = THIS_YEAR]){
Opportunity opp = new Opportunity();
opp.Name= acc.Name;
opp.CloseDate = System.today();
opp.StageName = 'Prospecting';
opp.AccountId = acc.Id;
oppToBeCreated.add(opp);
}
if(oppToBeCreated.size()>0)  {
insert oppToBeCreated;
}


}
}



public static void show2(Account acc){
insert acc;
}
public static void show3( List<Account> accountList){
for(Account a : accountList){
system.debug('Account::'+a);
}
}
public static Integer show4(){            
return 10;
}
public static list<account> show5(string namevar){
List<Account> accountList = [Select Id, Name from Account WHERE Name LIKE:'%'+nameVar+'%'];
return accountList;
}
public static void updateAccountPhone(){
List<Account> accList = new List<Account>();
for(Account acc :[Select Id, Name FROM Account WHERE CreatedDate = LAST_WEEK]){
acc.phone = '12344567';
accList.add(acc);
}
if(!accList.isEmpty()){
update accList;

}
}//
public static void updatedescription(){
List<opportunity> oppList =  [SELECT StageName, Id, CloseDate, Name FROM Opportunity WHERE CreatedDate = TODAY];

if(!oppList.isEmpty()) {
for(opportunity opp :oppList) {
if(opp.StageName == 'closed won'){
opp.Description = 'Opportunity is closed won';
}else if(opp.StageName == 'closed Lost'){
opp.Description = 'Opportunity is closed Lost';
}
}

}  
if(!oppList.isEmpty()){
update oppList;
}
}

public static void countContacts(){
List<Account> accList = [SELECT Id, Name, (SELECT Id, LastName, FirstName FROM Contacts) FROM Account WHERE CreatedDate = LAST_MONTH];

if(!accList.isEmpty()){
for(Account acc : accList){
acc.Total_Contacts__c =  acc.Contacts.size();
}
}
if(!accList.isEmpty()){
update accList;
}
}*/
    public static void copyAccountPhoneTOContact(){
        List<Contact> conList = [SELECT Id, FirstName ,Phone ,Account.phone FROM Contact WHERE AccountId != null];
        if(!conList.isEmpty()){
            for(Contact con : conList){
                if(con.phone == null){
                    con.phone = con.Account.phone;
                }
            }
        }
        system.debug(conList);
        
        if(!conList.isEmpty()){
            update conList;
        }
    }
}