#include <iostream>
#include <math.h>
#include <list>
#include <vector>


/*std::pair<float,float> centerOfGravity(list<std::pair<std::pair<float, float>,float> > data){
	float massSum=0, xSum =0, ySum= 0;

	for (list<std::pair<float, float>,float>::iterator it= data.begin(); it!= data.end(); ++it)
		massSum+= *it.second;
		xSum= xSum + *it.second* *it.first.first; //may need to vary the readings logarithmically
		ySum= ySum + *it.second* *it.first.second;
	return (xSum/massSum, ySum/massSum)
}*/
int main(){
	//std::cout<<centerOfGravity(list(std:pair(std:pair(0,0),1),std:pair(std:pair(10,0),1),std:pair(std:pair(0,10),1)));
	std::list<int> x (1,2);
	//std::cout<<x.back();
	return -1;
}