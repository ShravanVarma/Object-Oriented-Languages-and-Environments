/*
 * FoodItem.cpp
 *
 *  Created on: May 1, 2014
 *      Author: SONY
 */

#include "FoodItem.h"
#include<iostream>
#include "Salmon.h"
#include "Turkey.h"
#include "EggPlant.h"
#include "list"
#include "vector"


using namespace std;

FoodItem::FoodItem() {
	// TODO Auto-generated constructor stub
	name = 0;
	price = 0;
	calorie = 0;
}
FoodItem::FoodItem(const FoodItem& foodItem){
	this->name = new char[256];
	strcpy(this->name,foodItem.name);
	this->price = foodItem.price;
	this->calorie = foodItem.calorie;
}
FoodItem::FoodItem(char* name,double price,int calorie){
	this->name = new char[256];
	strcpy(this->name, name);
	this->price = price;
	this->calorie = calorie;
}




FoodItem::~FoodItem() {
	// TODO Auto-generated destructor stub
	delete name;
}

int main(){
	char input;
	char choice;
	char* name = new char[256];
	double price;
	int calories;
	int ounces;
	char* sideDishEgg = new char[256];
	char* sideDish = new char[256];
	int cook;
	int bread;
	int patNum;
	int sPatNum;
	int dPatNum;
	int vectorSize;
	int vectorSize1;
	level l;
	vector<char*> condiment;
	//vector<FoodItem*> foodItem;
	//vector<FoodItem*> *array[10] = {&foodItem};
	vector<FoodItem*> array[10],tempArray;
	//FoodItem* fi;
	Salmon *s1;
	EggPlant *e1;
	Turkey *t1;

	while(true){
	cout <<endl<<endl<<"=====> Welcome to Customer Order System (COS) <====="<<endl;
	cout<<endl<<"Enter your choice to execute the function:";
	cout<<endl<<endl;
	cout<<"n — New List"<<endl;
	cout<<"a — Add List Entry"<<endl;
	cout<<"c — Copy List"<<endl;
	cout<<"d — Delete List"<<endl;
	cout<<"l — List patron"<<endl;
	cout<<"s — Swap orders"<<endl;
	cout<<"q — Quit"<<endl;
	cout<<"==============================================="<<endl;
	cout<<"Option : ";
	cin>>input;
	cin.ignore(1,'\n');

	switch (input) {
	/*===============================================*/
	case 'n':
				cout<<"Enter the patron number";
				cin>>patNum;
				if(patNum<1 || patNum>10){
					cout<<"Enter a patron number between 1-10";
					break;
				}
				if(array[patNum-1].size()!=0){
					cout<<array[patNum-1].size();
					cout<<"The table is already filled"<<endl;
					break;
				}

				cout<<endl<<"====>Menu<===="<<endl;
				cout<<"s-Salmon"<<endl;
				cout<<"t-Turkey Sandwich"<<endl;
				cout<<"e-Eggplant Casserole"<<endl;
				cout<<"============"<<endl;
				cout<<"Enter your choice: ";cin>>choice;
				cin.ignore(1,'\n'); //fix getline skips first input
				switch(choice){
				case 's':
					cout<<endl<<"==>Salmon Menu<==";

					cout<<endl<<"Enter Name of the Salmon dish: ";cin>>name;
					cout<<endl<<"Enter Price of the Salmon dish: ";cin>>price;
					cout<<endl<<"Enter Calorie Count of the Salmon dish: ";cin>>calories;
					cout<<endl<<"Side Dish for the Salmon dish: ";cin>>sideDish;
					cout<<endl<<"Enter the Level to be cooked : "<<endl<<"1.rare"<<endl<<"2.medium"<<endl<<"3.well cooked:";
					cin>>cook;
					switch(cook)
					{
					case 1:
					       l = rare;
					       break;
					case 2:
					       l=medium;
					       break;
					case 3:
					       l=welldone;
					       break;
					default:
					       cout<<endl<<"Enter the correct choice";
					}

					s1 = new Salmon(name,price,calories,l,sideDish);

						//foodItem.push_back(fi);
						array[patNum-1].push_back(s1);



					break;

				case 't':
					cout<<endl<<"==>Turkey Sandwich Menu<==";

					cout<<endl<<"Enter Name of the Turkey Sandwich: ";cin>>name;
					cout<<endl<<"Enter Price of the Turkey Sandwich: ";cin>>price;
					cout<<endl<<"Enter Calorie Count of the Turkey Sandwich: ";cin>>calories;
					cout<<endl<<"Enter the kind of bread:"<<endl<<"1.white"<<endl<<"2.rye"<<endl<<"3.garlic:";

					cin>>bread;
					switch(bread){
					case 1:
					bread = 1;
					break;
					case 2:
					bread = 2;
					break;
					case 3:
					bread = 1;;
					break;
					default:
					cout<<endl<<"Enter the correct choice";
					}
					cout<<endl<<"Enter the selection of Condiments. Press EXIT once the list of condiments are entered"<<endl;
					while(1)
					{
					cout<<endl<<"Enter the condiment and press Enter : ";
					char* temp=new char[256];
					cin>>temp;
					if(strcmp(temp,"EXIT")==0)
					break;
					condiment.push_back(temp);
					}
					t1 = new Turkey(name,price,calories,bread,condiment);
						//foodItem
						array[patNum-1].push_back(t1);
					break;
				case 'e':
					cout<<endl<<"==>Eggplant Casserole Menu<==";

					cout<<endl<<"Enter Name of the Eggplant Casserole: ";cin>>name;
					cout<<endl<<"Enter Price of the Eggplant Casserole: ";cin>>price;
					cout<<endl<<"Enter Calorie Count of the Eggplant Casserole: ";cin>>calories;
					cout<<endl<<"Ounces for the Eggplant Casserole: ";cin>>ounces;
					cout<<endl<<"Select the side dish of Eggplant Casserole:";cin>>sideDishEgg;

					e1 = new EggPlant(name,price,calories,ounces,sideDishEgg);

						//foodItem.push_back(fi);
						array[patNum-1].push_back(e1);

					break;
		}
		break;

	case 'q':
		//delete fi;
		return 0;

	case 'l':
		cout<<"Enter the patron number";
		cin>>patNum;
						if(patNum<1 || patNum>10){
							cout<<"Enter a patron number between 1-10";
							break;
						}
			if(array[patNum-1].size()== 0){
				cout<<"The table is empty"<<endl;
				break;
						}
		else{
			vectorSize = array[patNum-1].size();

			for(int i =0;i<vectorSize;i++){
				array[patNum-1].at(i)->print();
				std::cout << "-------------------------" << std::endl;
				}
				std::cout << "*******************************" << std::endl;
			}

		break;
	case 'a':

		cout<<"Enter the patron number";
		cin>>patNum;

						if(patNum<1 || patNum>10){
							cout<<"Enter a patron number between 1-10";
							break;
						}
		cout<<endl<<"====>Menu<===="<<endl;
		cout<<"s-Salmon"<<endl;
		cout<<"t-Turkey Sandwich"<<endl;
		cout<<"e-Eggplant Casserole"<<endl;
		cout<<"============"<<endl;
		cout<<"Enter your choice: ";cin>>choice;
		//cin.ignore(1,'\n'); //fix getline skips first input
		switch(choice){
			case 's':
				cout<<endl<<"==>Salmon Menu<==";

									cout<<endl<<"Enter Name of the Salmon dish: ";cin>>name;
									cout<<endl<<"Enter Price of the Salmon dish: ";cin>>price;
									cout<<endl<<"Enter Calorie Count of the Salmon dish: ";cin>>calories;
									cout<<endl<<"Side Dish for the Salmon dish: ";cin>>sideDish;
									cout<<endl<<"Enter the Level to be cooked : "<<endl<<"1.rare"<<endl<<"2.medium"<<endl<<"3.well cooked:";
									cin>>cook;
									switch(cook)
									{
									case 1:
									       l = rare;
									       break;
									case 2:
									       l=medium;
									       break;
									case 3:
									       l=welldone;
									       break;
									default:
									       cout<<endl<<"Enter the correct choice";
									}

									s1 = new Salmon(name,price,calories,l,sideDish);

										//foodItem.push_back(fi);
										array[patNum-1].push_back(s1);



				break;
			case 't':
				cout<<endl<<"==>Turkey Sandwich Menu<==";

									cout<<endl<<"Enter Name of the Turkey Sandwich: ";cin>>name;
									cout<<endl<<"Enter Price of the Turkey Sandwich: ";cin>>price;
									cout<<endl<<"Enter Calorie Count of the Turkey Sandwich: ";cin>>calories;
									cout<<endl<<"Enter the kind of bread:"<<endl<<"1.white"<<endl<<"2.rye"<<endl<<"3.garlic:";
									cin>>bread;
									switch(bread){
														case 1:
														bread = 1;
														break;
														case 2:
														bread = 2;
														break;
														case 3:
														bread = 1;;
														break;
														default:
														cout<<endl<<"Enter the correct choice";
														}
									cout<<endl<<"Enter the selection of Condiments. Press EXIT once the list of condiments are entered"<<endl;
									while(1)
									{
									cout<<endl<<"Enter the condiment and press Enter : ";
									char* temp=new char[256];
									cin>>temp;
									if(strcmp(temp,"EXIT")==0)
									break;
									condiment.push_back(temp);
									}
									t1 = new Turkey(name,price,calories,bread,condiment);
										//foodItem
										array[patNum-1].push_back(t1);
									break;
			case 'e':
				cout<<endl<<"==>Eggplant Casserole Menu<==";

				cout<<endl<<"Enter Name of the Eggplant Casserole: ";cin>>name;
				cout<<endl<<"Enter Price of the Eggplant Casserole: ";cin>>price;
				cout<<endl<<"Enter Calorie Count of the Eggplant Casserole: ";cin>>calories;
				cout<<endl<<"Ounces for the Eggplant Casserole: ";cin>>ounces;
				cout<<endl<<"Select the side dish of Eggplant Casserole:";cin>>sideDishEgg;

				e1 = new EggPlant(name,price,calories,ounces,sideDishEgg);

					array[patNum-1].push_back(e1);

				break;
			default:
				cout << "You have entered an invalid command, please enter a valid entry."<<endl;
				break;
		}
		break;
		case 'd':
					cout<<"Enter the patron number";
					cin>>patNum;

									if(patNum<1 || patNum>10){
										cout<<"Enter a patron number between 1-10";
										break;
									}
					if(array[patNum-1].size()==0){
						cout<<"The table is already empty"<<endl;
						break;}
					else{
						vectorSize = array[patNum-1].size();
						cout<<"size of the table is: " << vectorSize <<endl;
						for(int i=0;i<vectorSize;i++){
						delete array[patNum-1].at(i);
						}

						array[patNum-1].clear();
					break;
		case 'c':
				cout <<"Enter source patron to be copied";

				cin>>sPatNum;
								if(sPatNum<1 || sPatNum>10){
									cout<<"Enter a Source patron number between 1-10";
									break;
								}
				cout <<"Enter destination patron";
				cin  >>dPatNum;


								if(dPatNum<1 || dPatNum>10){
									cout<<"Enter a destination patron number between 1-10";
									break;
								}
				if (array[dPatNum-1].size() != 0){
				for(unsigned int i=0;i<array[dPatNum-1].size();i++){
					delete array[dPatNum-1].at(i);
					}
				array[dPatNum-1].clear();
				}
				for(unsigned int i=0;i<array[sPatNum-1].size();i++){
				array[dPatNum-1].push_back(array[sPatNum-1].at(i)->copy());
				}
				cout<<"Source copied to destination" <<endl;
				cout<<"Displaying new results of"<<endl;
				cout<<"Patron No :" << sPatNum << endl;
				vectorSize = array[sPatNum-1].size();
				for(int i =0;i<vectorSize;i++){
					array[sPatNum-1].at(i)->print();
					std::cout << "-------------------------" << std::endl;
				}
				cout<<"Patron No :" << dPatNum << endl;
				vectorSize1 = array[dPatNum-1].size();
				for(int i =0;i<vectorSize1;i++){
				array[dPatNum-1].at(i)->print();
				std::cout << "-------------------------" << std::endl;
				}


				break;
		case 's':
			cout<<"Enter the patrons to be swapped:";
			cout<<endl<<"Patron 1:";
			cin>>sPatNum;
											if(sPatNum<1 || sPatNum>10){
												cout<<"Enter a Source patron number between 1-10";
												break;
											}
			cout<<endl<<"Patron 2:";
			cin>>dPatNum;
											if(dPatNum<1 || dPatNum>10){
												cout<<"Enter a destination patron number between 1-10";
												break;
											}
			tempArray.clear();
			for(unsigned int i=0;i<array[sPatNum-1].size();i++)
			{
				tempArray.push_back(array[sPatNum-1].at(i));
			}
			array[sPatNum-1].clear();
			for(unsigned int i=0;i<array[dPatNum-1].size();i++)
			{
				array[sPatNum-1].push_back(array[dPatNum-1].at(i));
			}
			array[dPatNum-1].clear();
			for(unsigned int i=0;i<tempArray.size();i++)
			{
				array[dPatNum-1].push_back(tempArray.at(i));
			}
			cout<<"Patron Orders Swapped" <<endl;
			cout<<"Displaying new results of"<<endl;
			cout<<"Patron No :" << sPatNum << endl;
			vectorSize = array[sPatNum-1].size();
			for(int i =0;i<vectorSize;i++){
				array[sPatNum-1].at(i)->print();
				std::cout << "-------------------------" << std::endl;
			}
			cout<<"Patron No :" << dPatNum << endl;
			vectorSize1 = array[dPatNum-1].size();
			for(int i =0;i<vectorSize1;i++){
			array[dPatNum-1].at(i)->print();
			std::cout << "-------------------------" << std::endl;
			}
			break;
		default:
			cout << "You have entered an invalid command, please enter a valid entry."<<endl;
			break;

					}
					}

}
}
