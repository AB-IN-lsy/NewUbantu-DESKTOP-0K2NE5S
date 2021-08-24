#include<bits/stdc++.h>
using namespace std;


void MatrixChain( long int *p, long int n,long int m[100][100],long int s[100][100])
{   long int i,j,r,k,t;
    for (i=1; i<=n; i++) m[i][i]=0;
    for (r=2; r<=n; r++){
        for (i=1; i<=n-r+1; i++){
    	    j=i+r-1;
            m[i][j]=m[i][i]+m[i+1][j]+p[i-1]*p[i]*p[j];
            s[i][j]=i;
            for( k=i+1; k<j; k++){
    		    t=m[i][k]+m[k+1][j]+p[i-1]*p[k]*p[j];
                if(t< m[i][j]){ 
					m[i][j]=t;
				    s[i][j]=k; 
				}
    		}    	
		}
	}
}
void Traceback( long int i, long int j,long int s[100][100])
{
    if (i==j) return;
    Traceback(i,s[i][j],s);
    Traceback(s[i][j]+1,j,s);
    printf("%ld,%ld,%ld\n",i,j,s[i][j]);
}
int main()
{
    long int p[100];
    long int n;
    long int m[100][100],s[100][100];
    n=6;    p[0]=30;    p[1]=35;    p[2]=15;
    p[3]=5; p[4]=10;    p[5]=20;    p[6]=25;
    MatrixChain( p, n, m,s);
    printf("zuiyouzhi=%ld",m[1][6]);
    printf("\ns[1][6]=%ld\n",s[1][6]);
    Traceback(1,n,s);
}


