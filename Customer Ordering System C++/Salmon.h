/*
 * Salmon.h
 *
 *  Created on: May 1, 2014
 *      Author: SONY
 */

#ifndef SALMON_H_
#define SALMON_H_

#include "FoodItem.h"
#include<iostream>
enum level{rare=0,medium=1,welldone=2};

class Salmon: public FoodItem {
public:
	Salmon();
	virtual ~Salmon();

	char* sideDish;
	Salmon(char* name,double price,int calorie,int cook,char* sideDish);
	Salmon(const Salmon& salmon);
	virtual void print();
	virtual Salmon* copy();
	level l;
};

#endif /* SALMON_H_ */
