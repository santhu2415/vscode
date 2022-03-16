public class mapstates {
    public static void cities(){
        map<string,string> m = new  map<string,string>();
        m.put('telangana','Hyderabad');
        m.put('andrapradesh','amaravathi');
        system.debug('key'+m.keyset());
        system.debug('value'+m.values());
        system.debug('key'+m.get('Hyderabad'));
        system.debug('key'+m.containskey('telangana'));
         /*map<string,list<string>> m = new   map<string,list<string>>();
        list<string> slist = new list<string>{'warangal','hyderabad','bhupalpally','warangal'};
              list<string> alist = new list<string>{'nellore','vijayawada','guntur','kadapa'};
                  m.put('andrapradesh',alist);
            m.put('telanagana',slist);
       system.debug('states cities'+m);
        system.debug('key'+m.keyset());
        system.debug('values'+m.values());
        system.debug('keyvalue'+m.get('warangal'));*/
        
    }
}