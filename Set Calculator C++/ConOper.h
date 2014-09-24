/*
 * ConOper.h
 *
 *  Created on: Apr 18, 2014
 *      Author: SONY
 */

#ifndef CONOPER_H_
#define CONOPER_H_
#include "BST.h"

namespace std {

class ConOper {
public:
	ConOper();
	virtual ~ConOper();
	void add(char* aString);
	void displayValues();
	void copySet();
	void copySetHelper(Node* rootNode);
	void clearSet();
	void clearTree3();
	void switchSets();
	void switchSetsHelper(Node* rootNode);
	void switchSetsHelper2(Node* rootNode);
	void unionSets();
	void unionHelper(Node* rootNode);
	void intersect();
	void intersectHelper(Node* binaryTree2);
	const BST & operator = (const BST &); //assignment operator overload
};

} /* namespace std */

#endif /* CONOPER_H_ */
