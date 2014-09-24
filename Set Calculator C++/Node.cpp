/*
 * Node.cpp
 *
 *  Created on: Apr 16, 2014
 *      Author: SONY
 */

#include <iostream>
#include "Node.h"
using namespace std;

Node::Node(){
	value = 0;
	left = NULL;
	right = NULL;
}


Node::Node(char* a){
	value = a;
	left = NULL;
	right = NULL;
}




Node::~Node() {
	// TODO Auto-generated destructor stub

}







