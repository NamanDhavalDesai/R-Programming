series<-function(value)
{
    calculator<-function(value1)
    {
        min<-1
        max<-value1
        for(l1 in 1:1000)
        {
            mean=(min+max)/2
            ans<-mean
            for(l2 in 1:(value1-1))
            {
                ans<-mean^ans
            }
            if(ans!=value1)
            {
                if(ans<value1)
                    min<-mean
                if(ans>value1)
                    max<-mean
            }
        }
        return(as.character(mean))
    }
    f2<-function(value2)
    {
        ansmain<-"1"
        for(l3 in 2:value2)
        {
            ansperval<-calculator(l3)
            ansmain<-c(ansmain,ansperval)
        }
        return(ansmain)
    }
    ansmain<-f2(value)
    return(ansmain)
}