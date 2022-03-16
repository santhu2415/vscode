/*public class newcalculator {
    public static string Docalculation( integer a,integer b,string func ){
        if(func=='+'){
            func =string.valueOf(a+b);
        }else if(func =='-'){
            func=string.valueOf(a-b);
        }
        else if(func=='*'){
            func = string.valueOf(a*b);   
        }
        else if(func =='/'){
            func = string.valueOf(a/b);
        }
        system.debug('result='+func);
        return func;
    }
}*/
public class BasicCalculator {
    public static integer getValue(integer a , integer b,String Function){
        integer result;
        if(Function == '+'){
            result = a + b;            
        }else if(Function == '-'){
            result = a - b;
        }else if(Function == '*'){
            result = a * b;
        }
        system.debug('Result is::::'+ result);
        return result;
       
    }
}