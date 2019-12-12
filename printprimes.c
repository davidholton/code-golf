/*
  With an input of n through argv print out every prime number from 1-n on a newline.
  Input: ./a.out 10
  Output:
  1
  2
  3
  5
  7
  
  122 bytes with gcc 8.3
*/

int i,n,j;main(int c,char**v){sscanf(v[1],"%d",&n);for(;i<=n;i++){j=1;for(;i%++j&&j*j<i;);if(i<3?i:i%j)printf("%d\n",i);}}
