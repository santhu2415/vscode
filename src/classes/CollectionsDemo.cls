public class CollectionsDemo {
    public  void ListDemo(){
      /* List<string> nameList = new List<string>();
        List<integer> nameList2 = new List<integer>();
        nameList.add('mahesh');
         nameList.add('srinu');
        nameList.add(1,'ram');
        //nameList2 = nameList.clone();
         nameList2.add(5);
        Boolean b;
        b =  nameList.contains('ram'); 
        nameList.sort();
        system.debug('namelist '+ nameList);
        system.debug('namelist '+nameList2);
        system.debug('result=>'+ b);
        system.debug('namelist '+nameList.get(1));
         system.debug('namelist '+ nameList2.size());
}
}
/*
        List<string> nameList = new List<string>{'hi','hello'};
       Set<string> nameSet = new Set<string>();
        Set<string> nameSet2 = new Set<string>();
        
        nameSet.add('zee');
         nameSet.add('john');
        nameSet.add('john');
        nameset.addAll(nameList);
        system.debug('nameset ' +nameSet);
         nameSet2 =  nameSet.clone();
        system.debug('nameset2= ' +nameSet2);
          system.debug( nameSet2.contains('hii'));
         system.debug( nameSet2.contains('hi'));
        Boolean b;
        b =  nameSet.equals(nameSet2);
          system.debug( 'b=>'+b);*/

        
    /*  nameList.add(0,'element');
        system.debug('after add to 0 index'+nameList);
       nameList.set (0,'i am updated value');
        system.debug('after set to 0 index'+nameList);
        
        Boolean isContains = nameList.contains('amit');
        system.debug('iscontainsDemo'+isContains);
        List<string> nameList1 = new List<string>();
        nameList.add('anu');



        nameList.add('shiv');
        nameList.addAll(nameList1);
        system.debug('nameList + nameList1' +nameList);    
    } 
}*/
        Map<integer,string> intostr = new  Map<integer,string>();
        intostr.put(1,'sai');
        intostr.put(2,'ram');
        intostr.put(1,'john');
          intostr.put(3,'ram');
          intostr.put(4,'suersh');
          intostr.remove(4);
         system.debug('students=>'+intostr);
        system.debug('students=>'+intostr.values());
        set<integer> intset = new set<integer>();
        intset = intostr.keyset();
        system.debug('students=>'+intset);
    }
}