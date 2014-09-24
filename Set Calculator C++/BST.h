/*
 * BST.h
 *
 *  Created on: Apr 17, 2014
 *      Author: SONY
 */

#ifndef BST_H_
#define BST_H_
#include "Node.h"
using namespace std;

class BST {
public:
	BST();
	virtual ~BST();
	Node* parent;
	Node* searchNode;
	Node* getPointer() {
		return pointer;
	}

	void setPointer(Node* pointer) {
		this->pointer = pointer;
	}

	Node* getRoot(){
		return root;
	}

	void setRoot(Node* root) {
		this->root = root;
	}

	Node* add(char* aNum);
	bool isEmpty();
	void displayValues();
	void printValues(Node* rootNode);
	int strComp(const char* s1,const char* s2);
	bool findNode(Node* rootNode,char* aValue);
	BST(const BST&); //copy constructor
	void cpy(Node * N);
	void cut(Node * N);
private:
	Node* pointer;
	Node* root;
};

#endif /* BST_H_ */
