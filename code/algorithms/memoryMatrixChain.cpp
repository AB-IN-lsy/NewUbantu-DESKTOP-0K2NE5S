#include <stdio.h>
#include <string.h>

long int n;

long int m[100][100],s[100][100];

long int p[100] = {30,35,15,5,10,20,25};

int MemorizeMatrixChain(int n, int **m, int **s)
{   
	int i,j; 
	for(i=1; i<=n; i++){ 
        for(j=i; j<=n; j++){ 
	         m[i][j]=0;
	    } 
	} 
    return LookupChain(1,n);
}
int LookupChain(int i,int j)
{
    if(m[i][j]>0)return m[i][j];
    if (i == j) return 0;
    int u = LookupChain(i,i) + LookupChain(i+1,j) + p[i-1]*p[i]*p[j];
    s[i][j] = i;
    int k;
    for(k = i+1; k < j; k++) {
        int t = LookupChain(i,k) + LookupChain(k+1,j) + p[i-1]*p[k]*p[j];
        if (t < u){ 
		    u = t;
			s[i][j] = k;
		}
    }
    m[i][j] = u;
	return u;
}

int main()
{
    int output;
    output = MemorizeMatrixChain(n, m,s);
    printf("%ld",output);

}
