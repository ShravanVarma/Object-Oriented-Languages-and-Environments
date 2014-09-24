/*
 * FoodItem.h
 *
 *  Created on: May 1, 2014
 *      Author: SONY
 */

#ifndef FOODITEM_H_
#define FOODITEM_H_
#include <String.h>
#include "vector"
using namespace std;

class FoodItem {
public:
	FoodItem();
	FoodItem(char* name,double price,int calorie);
	FoodItem(const FoodItem& foodItem);
	virtual ~FoodItem();
	int price;
	char* name;
	int calorie;
	virtual void print()=0;
	virtual FoodItem* copy()=0;

};

#endif /* FOODITEM_H_ */
