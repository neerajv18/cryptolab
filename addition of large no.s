 #include <stdio.h>
    #include <stdlib.h>

    int main() {

      int i,big[500]={0},x[500]={0},y[500]={0},p,k=0,len;
      printf("enter the number of digits less than 500 \n");
      scanf("%d",&len);
      //inputs
      for(i=0;i<len;i++)
      {
          x[i]=rand()%10;
           printf("%d",x[i]);
      }
      printf("\n");
      for(i=0;i<len;i++)
      {
          y[i]=rand()%10;
           printf("%d",y[i]);
      }
      i=0;
      one:
          if(x[i]==y[i])
          {
            goto one;
            i++;
          }
          else if (x[i]!=y[i])
          goto two;
      two:
      if(y[i]>x[i])
      {
          for(k=0;k<len;k++)
          {
            big[k]=y[k];
            y[k]=x[k];
            x[k]=big[k];
          }
      }
      printf(" \n after finding the greater \n");
	printf("|n first number \n");
      for(i=0;i<len;i++)
      {
         printf("%d",x[i]);
      }
      printf("\nsecond number \n");
      for(i=0;i<len;i++)
      {
         printf("%d",y[i]);
      }
      printf("\n");

     int add[500]={0};

      for(i=(len-1);i>=0;i--)
      {
          add[i+1]=(add[i+1]+x[i]+y[i]);
          if(add[i+1]>9)
          {
              add[i]=add[i+1]/10;
              add[i+1]=add[i+1]%10;
         }

      }
      for(i=0;i<=len;i++)
        printf("%d",add[i]);


    return 0;
    }
