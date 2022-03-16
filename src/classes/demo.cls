public class demo {
   public static void opp(){
   /*  List<opportunity> opplist =[SELECT StageName, Id,CloseDate, Name FROM Opportunity where CreatedDate =THIS_WEEK];
       
       if(!opplist.isEmpty()){
           for(opportunity opp :opplist){
               if(opp.stagename == 'closedwon'){
                   opp.Description ='opportunity is closedwon';
               }else if(opp.stagename == 'closedlost'){
                   opp.Description ='opportunity is closedLOST';
               }
               }
           }
       if(!opplist.isEmpty()){
           update opplist;
       }
       system.debug('hi'+opplist);*/
      // query account records created last week .now update phonr number of all accounts with 1234567890 value.
          List<account> acc =[SELECT Id, Name FROM Account where createdDate = THIS_WEEK ];
       if(!acc.isEmpty()){
           for(account ac :acc){
               ac.phone ='7729087484';
           }
       }
       if(!acc.isEmpty()){
           update acc;
       }
       }       
   }