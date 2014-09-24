/*
 * EggPlant.cpp
 *
 *  Created on: May 2, 2014
 *      Author: SONY
 */

#include "EggPlant.h"

EggPlant::EggPlant() {
	// TODO Auto-generated constructor stub
	ounces = 0;
	sideDishEgg = NULL;
}

EggPlant::EggPlant(char* name,double price, int calorie,int ounces, char* sideDishEgg)
	   :FoodItem(name,price,calorie){
	this->ounces = ounces;
	this->sideDishEgg = new char[256];
	strcpy(this->sideDishEgg,sideDishEgg);
}

EggPlant* EggPlant::copy(){
	EggPlant* eggPlant = new EggPlant(*this);
	return eggPlant;
}

EggPlant::EggPlant(const EggPlant& eggPlant):FoodItem(eggPlant){
	this->ounces = eggPlant.ounces;
	this->sideDishEgg = new char[256];
	strcpy(this->sideDishEgg,eggPlant.sideDishEgg);
}

void EggPlant::print(){
	cout << "Name:" << this->name << endl;
	cout << "Price:" << this->price << endl;
	cout << "Calories:" << this->calorie << endl;
	cout << "Ounces:" << this->ounces << endl;
	cout << "Side Dish:" << this->sideDishEgg << endl;
}

EggPlant::~EggPlant() {
	// TODO Auto-generated destructor stub
	delete sideDishEgg;

}

