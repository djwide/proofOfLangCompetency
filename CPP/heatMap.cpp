// Example heat map prototype used in coursework.
// This is not production ready and is provided for educational purposes only.

#include <iostream>
#include <math.h>

class HeatMap{

	private:
		std::array<float,100> myarray;
		float heatMapArray[100][100];
		float maxHMVal;
		int maxInd, totalReadings;

	
	public:
		int init(){//(gps, pow)<= data
			maxHMVal=0;
			maxInd= (-1,-1);
		}

		void updateMap(int updateArr[][], int numUpdates){}
		
		float intensity( ((float, float), float ) data, float power){}
		//distance trivial implementation
		float distance(float x0, float y0, float x1, float y1){
			return sqrt(pow(x0-x1,2)+pow(y0-y1,2));
		}
		//normalizehat map

		//returns a weighted sum approximation of the location
		std::pair<float,float> centerOfGravity(std::list<std::pair<std:pair<float, float>,float>> data){
			float massSum=0, xSum =0, ySum= 0;

			for (std::list<std::pair<float, float>,float>::iterator it= data.begin(); it!= data.end(); ++it)
				massSum+= *it.second;
				xSum= xSum + *it.second* *it.first.first; //may need to vary the readings logarithmically
				ySum= ySum + *it.second* *it.first.second;
			return (xSum/massSum, ySum/massSum)
		}

		float[]][] radiusUpdate (data:List((float,float), float){
			temopHeatMapArray= Array(Array()).fill(100,100)(0)
			for (d<- data)
				for(x <-heatMapArray)
					for(y<-x)
						x+= intensity(data, x,y)//messed up indices
						if(x> max) {
							max= x
							maxInd= (x,y)
						}
		}
}