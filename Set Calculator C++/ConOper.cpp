/*
 * ConOper.cpp
 *
 *  Created on: Apr 18, 2014
 *      Author: SONY
 */

#include "ConOper.h"
using namespace std;

BST* binaryTree1 = new BST();
BST* binaryTree2 = new BST();
BST* binaryTree3 = new BST();

ConOper::ConOper() {
	// TODO Auto-generated constructor stub
}

void ConOper::add(char* aString){
	binaryTree1->add(aString);
}
void ConOper:: displayValues(){
	cout<<"Set1:";
	binaryTree1->displayValues();
	cout<<endl;
	cout<<"Set2:";
	binaryTree2->displayValues();
	cout<<endl;
}

void ConOper::copySet(){
	this->copySetHelper(binaryTree1->parent);
	binaryTree1->parent = binaryTree1->getRoot();
}

void ConOper::copySetHelper(Node* rootNode){
	if(rootNode != NULL){
		binaryTree2->add(rootNode->getValue());
		copySetHelper(rootNode->getLeft());
		copySetHelper(rootNode->getRight());
	}

}

void ConOper::clearSet(){
	binaryTree1->setRoot(NULL);
	binaryTree1->setPointer(NULL);
	binaryTree1->parent = NULL;
	binaryTree1->searchNode = NULL;
}

void ConOper::clearTree3(){
	binaryTree3->setRoot(NULL);
	binaryTree3->setPointer(NULL);
	binaryTree3->parent = NULL;
	binaryTree3->searchNode = NULL;
}

void ConOper::switchSets(){
	this->switchSetsHelper(binaryTree2->parent);
	binaryTree2->setRoot(NULL);
	this->copySet();
	this->clearSet();
	this->switchSetsHelper2(binaryTree3->parent);

}

void ConOper::switchSetsHelper(Node* rootNode){
	if(rootNode != NULL){
			binaryTree3->add(rootNode->getValue());
			switchSetsHelper(rootNode->getLeft());
			switchSetsHelper(rootNode->getRight());
		}
}

void ConOper::switchSetsHelper2(Node* rootNode){
	if(rootNode != NULL){
				binaryTree1->add(rootNode->getValue());
				switchSetsHelper2(rootNode->getLeft());
				switchSetsHelper2(rootNode->getRight());
			}
}

void ConOper::unionSets(){
	this->unionHelper(binaryTree2->parent);
}

void ConOper::unionHelper(Node* rootNode){
	if(rootNode != NULL){
		binaryTree1->add(rootNode->getValue());
		unionHelper(rootNode->getLeft());
		unionHelper(rootNode->getRight());
	}
}

void ConOper::intersect(){
	//cout <<binaryTree1->findNode(binaryTree1->getRoot(),"shra");
	Node* root = binaryTree2->getRoot();
	this->clearTree3();
	this->intersectHelper(binaryTree2->getRoot());
	binaryTree2->setRoot(root);
	this->clearSet();
	this->switchSetsHelper2(binaryTree3->getRoot());
}

void ConOper::intersectHelper(Node* rootNode){
	if(rootNode != NULL){
			if(binaryTree1->findNode(binaryTree1->getRoot(),rootNode->getValue())){
				binaryTree3->add(rootNode->getValue());
			}
			intersectHelper(rootNode->getLeft());
			intersectHelper(rootNode->getRight());
}
}

const BST & ConOper::operator=(const BST & T){
		return T;

}
ConOper::~ConOper() {
	// TODO Auto-generated destructor stub
}


