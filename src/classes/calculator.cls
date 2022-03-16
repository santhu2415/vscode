public class calculator {
    public  decimal addmethod(decimal a, decimal b)
    {
        
       decimal c =a+b;
        system.debug('addition of two number = '+c);
        return c;
    }
    public decimal submethod(decimal a, decimal b)
    {
        decimal c =a-b;
        
         system.debug('substraction of two number = '+c);
        return c;
    }
    public decimal mulmethod(decimal a, decimal b)
    {
        decimal c =a*b;
        
         system.debug('multiplication of two number = '+c);
        return c;
}
    public decimal divmethod(decimal a, decimal b)
    {
        decimal c;
        c =a/b;
         system.debug('divison of two number = '+c);
        return c;
         }  
    public static void square(integer squareRoot)
    {
        system.debug(Math.sqrt(squareRoot));   
    }
}