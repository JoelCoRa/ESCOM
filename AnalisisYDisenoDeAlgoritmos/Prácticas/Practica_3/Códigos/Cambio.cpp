#include <iostream>

using namespace std;

int main()
{
 int moneda[] = {50,25,5,1};
 int veces[] = { 0, 0, 0, 0};
 int n = 4;
 int monto,i;
 
 cout<<"Monto: ";
 cin>>monto;
 
 for(i=0;i<n;i++)
 {
  veces[i] = monto/moneda[i];
  monto = monto%moneda[i];
 }
 for(i=0;i<n;i++)
 {
  cout<<"Monedas "<<moneda[i]<<" cantidad "<<veces[i]<<endl;
 }
}
