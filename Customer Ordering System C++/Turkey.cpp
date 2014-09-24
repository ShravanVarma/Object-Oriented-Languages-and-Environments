/*
 * Turkey.cpp
 *
 *  Created on: May 1, 2014
 *      Author: SONY
 */

#include "Turkey.h"


Turkey::Turkey() {
	// TODO Auto-generated constructor stub

}

Turkey::Turkey(char* name,double price, int calorie, int bread_, vector<char*> condiments)
	   :FoodItem(name,price,calorie),condiments(condiments){
	//this->b = new char[256];
	//this->condiments = new char[256];
	//strcpy(this->b,bread);
	//strcpy(this->condiments,condiments);
	b= bread(bread_);

}

Turkey* Turkey::copy(){
	Turkey* turkey = new Turkey(*this);
	return turkey;
}

Turkey::Turkey(const Turkey& turkey):FoodItem(turkey){
	this->b = turkey.b;
	this->condiments = turkey.condiments;

}

void Turkey::print(){
	cout << "Name:" << this->name << endl;
	cout << "Price:" << this->price << endl;
	cout << "Calories:" << this->calorie << endl;
	cout << "The Condiments are:" << endl;
	for(unsigned int i=0; i<condiments.size();i++){
		cout<<condiments.at(i)<<" ";}
	if(b==white)
		cout<<endl<<"Type of Bread:White"<<endl;
	if(b==rye)
		cout<<endl<<"Type of Bread:Rye"<<endl;
	if(b==garlic)
		cout<<endl<<"Type of Bread:garlic"<<endl;


}

Turkey::~Turkey() {
	// TODO Auto-generated destructor stub
	//delete b;
	//delete condiments;

}

