/*
 * Main.cpp
 *
 *  Created on: Apr 16, 2014
 *      Author: SONY
 */

#include <stdio.h>
#include <iostream>
#include "Node.h"
#include "BST.h"
#include "ConOper.h"
using namespace std;

int main(){
	ConOper *b= new ConOper();
	while(1){
		char* temp = new char[256];
		char choice;
		cout<<"Enter the operation you wish to perform on the sets";
		cout<<endl<<endl<<"c : :  Clear Set S1"<<endl;
		cout<<"s : : Switch sets S1 and S2"<<endl;
		cout<<"C : : Copy set S1 to S2"<<endl;
		cout<<"l : : List contents of set S1 and S2"<<endl;
		cout<<"a : : Add element to set S1"<<endl;
		cout<<"u : : Union of Sets S1 and S2"<<endl;
		cout<<"i : : Intersection of sets S1 and S2"<<endl;
		cout<<"q : : Quits the set calculator"<<endl;
		cout<<"-----------------------------------------------"<<endl;
		cin>>choice;

		switch (choice) {

		case 'c':
			b->clearSet();
			cout<<"S1 cleared"<<endl;
			cout<<"-----------------------------------------------"<<endl;
			break;
		case 's':
			b->switchSets();
			cout<<"Sets Swapped"<<endl;
			cout<<"-----------------------------------------------"<<endl;
			break;
		case 'C':
			b->copySet();
		    cout<<"S1 copied to S2"<<endl;
			cout<<"-----------------------------------------------"<<endl;
			 break;
		case 'l':
			b->displayValues();
			cout<<endl;
			cout<<"-----------------------------------------------"<<endl;
			break;
		case 'a':
			 cout<<endl<<"Enter the element that is to be added to S1"<<endl;
			 cin>>temp;
			 b->add(temp);
			 break;
		case 'u':
			b->unionSets();
			cout<<"Union of sets Done"<<endl;
			cout<<"-----------------------------------------------"<<endl;
			break;
		case 'i':
			b->intersect();
			cout<<"Intersection of sets Done"<<endl;
			cout<<"-----------------------------------------------"<<endl;
			break;
		case 'q':
			cout<<endl<<"----Set manager exiting----"<<endl;
			return 0;
		default:
		    cout<<endl<<"*****Enter the correct choice****"<<endl;
		    main();
	}
	}
}

