//
//  Node.h
//  BinarySearchTree
//
//  Created by Mohan on 4/4/14.
//  Copyright (c) 2014 Shravan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject
{
    int value;
    Node *left;
    Node *right;
}

- (void) setValue: (int) valueAdd;
- (int) value;
- (void) setLeft: (Node *) leftPointer;
- (Node *) left;
- (void) setRight: (Node *) rightPointer;
- (Node *) right;
- (Node *) initWithValue: (int) aNum;

@end
