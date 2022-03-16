public class storeDEMO {
    public static void Demo(){
        
      /* Account a = new Account(Name='Universal Containers');
insert(a);
insert(new Contact(LastName='Carter',AccountId=a.Id));
delete a;*/


        List<opportunity> opp = new  List<opportunity>();
               
       OPP =[SELECT Id, Name, IsDeleted, LastModifiedDate FROM Opportunity WHERE IsDeleted = TRUE AND LastModifiedDate = TODAY ALL ROWS ];
        UNDELETE OPP;
    }
        
        
        
    }