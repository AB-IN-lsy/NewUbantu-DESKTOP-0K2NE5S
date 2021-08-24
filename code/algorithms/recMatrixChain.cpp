# include<bits/stdc++.h>
using namespace std;

long int RecurMatrixChain( long int *p, long int i, long int j, long int s[100][100])
{   if(i==j)
      return 0;
   long int u=RecurMatrixChain(p,i,i,s)+RecurMatrixChain(p,i+1,j,s)+p[i-1]*p[i]*p[j];
   s[i][j]=i;
   for(long int k=i+1; k<j; k++){
       int t=RecurMatrixChain(p,i,k,s)+RecurMatrixChain(p,k+1,j,s)+p[i-1]*p[k]*p[j];
       if(t<u){
          u=t;
		  s[i][j]=k;
		} 
    }
   return u;
}

void Traceback( long int i, long int j,long int s[100][100])
{    if (i==j) return;
    Traceback(i,s[i][j],s);
    Traceback(s[i][j]+1,j,s);
    printf("%ld,%ld,%ld\n",i,j,s[i][j]);}

int main()
{   long int p[100]; long int n; long int sum;    long int s[100][100];
    n=6;    p[0]=30;    p[1]=35;    p[2]=15;    p[3]=5;    p[4]=10;    p[5]=20;    p[6]=25;
    sum=RecurMatrixChain( p, 1,n,s);
    printf("zuiyouzhi=%ld",sum);
    printf("\ns[1][6]=%ld\n",s[1][6]);
    Traceback( 1, n, s);
}

