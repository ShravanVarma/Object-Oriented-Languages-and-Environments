/*
 * Salmon.cpp
 *
 *  Created on: May 1, 2014
 *      Author: SONY
 */

#include "Salmon.h"
#include <iostream>

Salmon::Salmon() {
	// TODO Auto-generated constructor stub
	sideDish = NULL;

}

Salmon::Salmon(char* name,double price,int calorie,int cook,char* sideDish)
:FoodItem(name,price,calorie){
	l=level(cook);
	this->sideDish = new char[256];
	strcpy(this->sideDish,sideDish);
}

Salmon* Salmon::copy(){
	Salmon* salmon = new Salmon(*this);
	return salmon;
}

Salmon::Salmon(const Salmon& salmon):FoodItem(salmon){
	this->l = salmon.l;
	this->sideDish = new char[256];
	strcpy(this->sideDish,salmon.sideDish);
}

Salmon::~Salmon() {
	// TODO Auto-generated destructor stub
	//delete cook;
	delete sideDish;

}

void Salmon::print(){
	cout << "Name:" << this->name << endl;
	cout << "Price:" << this->price << endl;
	cout << "Calories:" << this->calorie << endl;
	cout << "Side Dish:" << this->sideDish << endl;
	if(l==rare)
	cout<<endl<<"Level of cooking:Rare"<<endl;
	if(l==medium)
	cout<<endl<<"Level of cooking:Medium"<<endl;
	if(l==welldone)
	cout<<endl<<"Level of cooking:Well Done"<<endl;
}
