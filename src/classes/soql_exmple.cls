public class soql_exmple {
    Public static void copp(){
        /* contact con = [SELECT Id, LastName FROM Contact where LastName = 'sam'];
List<opportunity> opp = new List<opportunity>();
for(Integer i=0;i<10;i++){
opportunity op = new opportunity();
op.Name = 'sravan'+i;
op.StageName='closedwon';
op.CloseDate =system.today();
op.ContactId =con.id;
opp.add(op);  
}    
insert opp;*/
        
        Account acc =[SELECT Id, Name, Phone FROM Account WHERE Name = 'srinu'];
        List<contact> con = new List<contact>();
        List<opportunity> opp = new List<opportunity>();
        List<case> css = new List<case>();
        for(integer count = 1;count <=50; count++){
            contact cn = new contact();
            cn.LastName = 'VEERA'+count;
            cn.AccountId=acc.id;
            con.add(cn);}
        insert con;
        for(integer count = 1;count <=20; count++){
            opportunity op = new opportunity();
            op.Name = 'sravan'+count;
            op.StageName='closedwon';
            op.CloseDate =system.today();
            op.AccountId =acc.id;
            opp.add(op);
        }
        insert css;
        for(integer count = 1;count <=10; count++){
            case cs = new case();
            
            cs.status = 'new';
            cs.Origin ='high';
            cs.AccountId =acc.id;
            css.add(cs);}
        insert opp;
        
        
    }
}