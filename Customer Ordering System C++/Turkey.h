/*
 * Turkey.h
 *
 *  Created on: May 1, 2014
 *      Author: SONY
 */

#ifndef TURKEY_H_
#define TURKEY_H_

#include "FoodItem.h"
#include "list"
#include<iostream>
using namespace std;
enum bread{garlic,white,rye};

class Turkey: public FoodItem {
public:
	Turkey();
	Turkey(char* name,double price, int calorie, int bread_, vector<char*> condiments);
	Turkey(const Turkey& turkey);
	virtual void print();
	virtual Turkey* copy();
	virtual ~Turkey();
    bread b;
	vector<char*> condiments;

};

#endif /* TURKEY_H_ */
