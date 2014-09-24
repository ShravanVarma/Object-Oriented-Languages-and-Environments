/*
 * EggPlant.h
 *
 *  Created on: May 2, 2014
 *      Author: SONY
 */

#ifndef EGGPLANT_H_
#define EGGPLANT_H_

#include "FoodItem.h"
#include<iostream>

class EggPlant: public FoodItem {
public:
	EggPlant();
	virtual ~EggPlant();
	int ounces;
	char* sideDishEgg;
	EggPlant(char* name,double price, int calorie, int ounces, char* sideDishEgg);
	EggPlant(const EggPlant& eggPlant);
	virtual void print();
	virtual EggPlant* copy();
};

#endif /* EGGPLANT_H_ */
