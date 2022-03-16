public class test {
    public static void ac(){
        list<contact> con =[SELECT Id, LastName, Phone,account.phone, AccountId FROM Contact];      
        for(contact c :con){
            if(c.phone == null){
                c.phone = c.account.phone;
            }
        }      
        update con;        
    }
}