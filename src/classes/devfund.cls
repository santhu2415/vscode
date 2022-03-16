public class devfund {
    public static void ac(){
        /* List<Account> acclist =[SELECT Id, Name FROM Account where Name ='raki'];
List<contact> con = new  List<contact>();

//  if(!account acc : acclist){
for(Integer i=0;i<10;i++){
contact cont =new contact();
cont.LastName = 'raghav '+i;
cont.AccountId = acclist.get(0).id;
con.add(cont);
}

insert con;
LastModifiedDate = TODAY ALL ROWS
Account acc = [SELECT Id, Name FROM Account WHERE Name =:'raki' ];
list<contact>  con = [SELECT Id, LastName, AccountId FROM Contact where AccountId =: acc.id];

delete con;
// Account acc = [SELECT Id, Name FROM Account WHERE Name =:'raki' ];
list<contact> con =[SELECT Id,LastName,IsDeleted FROM Contact where Id =acc.id  IsDeleted = TRUE ALL ROWS];
UNDELETE CON;
Account a = new Account(Name='TrumpY');
//insert(a);
insert(new Contact(LastName='CarterO',AccountId=a.Id));

delete a;



undelete [SELECT Id, Name,IsDeleted FROM Account WHERE Name like : 'raki' ALL ROWS]; 
try {
undelete savedAccts;
} catch (DmlException e) {

}*/
        
        Account savedAccts = [SELECT Id, Name FROM Account WHERE Name = 'srinu' ];
        contact con =[select id ,lastname from contact where  lastname=:'raju' and isdeleted = true ALL ROWS];
        //delete con;
        
        //try {//
        undelete con;
        //} catch (DmlException e) {
        // Process exception here
    }
    
}