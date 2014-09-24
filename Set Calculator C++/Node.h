/*
 * Node.h
 *
 *  Created on: Apr 16, 2014
 *      Author: SONY
 */

#include<iostream>

#ifndef NODE_H_
#define NODE_H_


class Node {
public:
	Node();
	Node(char* a);
	virtual ~Node();



	 Node* getLeft() const {
		return left;
	}

	void setLeft(Node* left) {
		this->left = left;
	}

	 Node* getRight() const {
		return right;
	}

	void setRight(Node* right) {
		this->right = right;
	}

	char* getValue() {
		return value;
	}

	void setValue(char* value) {
		this->value = value;
	}

private:
	char* value;
	Node* left;
	Node* right;

};

#endif /* NODE_H_ */
