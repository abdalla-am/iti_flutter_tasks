import"dart:io";
void main(){
  int x=2;
  int y=3;
  int z=5;

  double equation1=(fact(x)*power(x, y)+sum(z))/(power(z,y)*fact(y));
  double equation2=(power(x, y)*power(x, z))/((sum(x)*sum(y))+(fact(z)*fact(y)));
  print("--------------------------------------------------");
  print("result of equation 1 = $equation1");
  print("result of equation 2 = $equation2");
  print("---------------------------------------------------");

}
int fact(int number)
{
  int factResult =1;
  for (int i = number; i >= 1; i--) {    //n ,n-1,n-2,n-3 , ...., 1
    factResult *= i;
  }
  return factResult;
}



int sum(int number){
  int sumResult =0;
  for (int i = number; i >= 0; i--) {    //n ,n-1,n-2,n-3 , ...., 0
    sumResult += i;
  }
  return sumResult;
}


int power(int number ,int power ){
  int powerResult =1 ;
  for(int i=0 ;i<power ;i++) {
    powerResult = powerResult * number;
  }
  return powerResult;
}