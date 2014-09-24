/*
 * BST.cpp
 *
 *  Created on: Apr 17, 2014
 *      Author: SONY
 */

#include "BST.h"
#include<iostream>
using namespace std;

BST::BST() {
	// TODO Auto-generated constructor stub
	pointer = NULL;
	root = NULL;
	parent = NULL;
	searchNode = NULL;
}

BST::BST(const BST& T){
	pointer = NULL;
	root = NULL;
	parent = NULL;
	searchNode = NULL;
	cpy(T.root);
}

void BST::cut(Node* N){
	if(N)
	{
		cut(N->getLeft());
		cut(N->getRight());
		delete N;
	}
}

void BST::cpy(Node * N){
		if(N)
		{
			add(N->getValue());
			cpy(N->getLeft());
			cpy(N->getRight());
		}
	}

bool BST::findNode(Node* rootNode,char* aValue){

		if(rootNode == NULL)
			return false;
		else if (strComp(rootNode->getValue(),aValue)==0){
			return true;
		}
		else if (strComp(rootNode->getValue(),aValue)>0){
			return findNode(rootNode->getLeft(),aValue);
		}
		else if (strComp(rootNode->getValue(),aValue)<0){
			return findNode(rootNode->getRight(),aValue);
		}

return false;
}


bool BST::isEmpty(){
	if(root == NULL)
	{
		return true;
	}
	else { return false; }
}

int BST:: strComp(const char* s1, const char* s2){
	for(; *s1!= '\0' && *s2!= '\0'; s1++,s2++){
		if(*s1 < *s2)
			return -1;
		if(*s1 > *s2)
			return 1;
	}
	if (*s2 != '\0') //s2 is longer
		return -1;
	else if (*s1 != '\0') //s1 is longer
		return 1;
	else return 0;
}

Node* BST::add(char* aNum){
if((this->isEmpty()) == true){
	root = pointer = parent = searchNode = new Node(aNum);}
else {
	if((this->strComp(aNum,pointer->getValue()))>0){
		if((pointer->getRight())== NULL){
			(pointer->setRight(new Node(aNum)));
		}else{
			pointer = pointer->getRight();
			this->add(aNum);
			pointer = root;
			return root;
		}

	}else{
		if((this->strComp(aNum,pointer->getValue()))==0){

		}else{
			if((pointer->getLeft())==NULL){
				pointer->setLeft(new Node(aNum));
			}else{
				pointer = pointer->getLeft();
				this->add(aNum);
				pointer = root;
				return root;
			}
		}
	}
}
return root;
}

void BST::displayValues(){
	Node* rootNode = root;
	return this->printValues(rootNode);
}

void BST::printValues(Node* rootNode){
	if(rootNode != NULL){
		printValues(rootNode->getLeft());
		printValues(rootNode->getRight());
		cout<<"\t" <<(rootNode->getValue());
	}

}



BST::~BST() {
	// TODO Auto-generated destructor stub

	cut(getRoot());
}

