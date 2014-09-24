//
//  BST.m
//  BinarySearchTree
//
//  Created by Mohan on 4/4/14.
//  Copyright (c) 2014 Shravan. All rights reserved.
//

#import "BST.h"

@implementation BST

@synthesize pointer;
@synthesize root;
@synthesize left;
@synthesize right;
@synthesize parent;
@synthesize parentNode;
@synthesize searchNode;



- (BOOL) isEmpty: (Node *) aNode;
{
    if(aNode == nil)
    {
        return true;
    }
    else
    {
        return false;
    }
}

- (Node *) addNum: (int) aNum;
{
    BOOL x;
    x = [self isEmpty: (Node *) root];
    if (x == TRUE ) {
        root = pointer = [[Node alloc ]initWithValue: aNum];
    }
    else {
        if (aNum > (pointer.value)) {
            if (pointer.right == nil) {
                pointer.right = [[Node alloc]initWithValue:aNum];
            } else {
                (pointer = pointer.right);
                [self addNum: aNum];
                pointer = root;
                return root;
            }
        } else {
            if (aNum == pointer.value) {
                return root;
            } else {
                if (pointer.left == nil) {
                    pointer.left = [[Node alloc]initWithValue:aNum];
                } else {
                    (pointer = pointer.left);
                    [self addNum: aNum];
                    pointer = root;
                    return root;
                    
                }
            }
        }
    }
    return root;
}

- (NSString *) displayValues;
{
    Node* rootValue = root;
    return [self printValues:rootValue];
    
}

- (NSString *) printValues: (Node *) rootValue;
{
    if (rootValue == nil) {
        return @"";
    } else {
        if (rootValue.left == nil) {
            if (rootValue.right == nil) {
                return [NSString stringWithFormat:@"%i" ,rootValue.value];
            } else {
                return [NSString stringWithFormat:@"%i%@%@", rootValue.value,[NSString stringWithFormat:@" "],[self printValues:rootValue.right]];
            }
        } else {
            if (rootValue.right == nil) {
                return [NSString stringWithFormat:@"%@%@%i",[self printValues: rootValue.left],[NSString stringWithFormat:@" "],rootValue.value];
                
            } else {
                return [NSString stringWithFormat:@"%@%@%i%@%@",[self printValues:rootValue.left],[NSString stringWithFormat:@" "],rootValue.value,[NSString stringWithFormat:@" "], [self printValues:rootValue.right]];
               
            }
            
        }
    }
}

- (Node *) findNode: (int) aNum;
{
    searchNode = root;
    return [self search: aNum];
}

- (Node *) search: (int) aNum;
{
    if (searchNode.value == aNum) {
        return searchNode;
    } else {
        if (searchNode.value < aNum) {
            searchNode = searchNode.right;
            if (searchNode == nil) {
                return nil;
            } else {
                [self search:aNum];
            }
        } else {
            searchNode = searchNode.left;
            if (searchNode == nil) {
                return nil;
            } else {
                [self search: aNum];
            }
        }
    }
    return nil;
}

-(Node*) findParentNode: (int) aNum;
{
    parentNode = root;
    return [self findParent:aNum];
    
}



- (Node*) findParent: (int) aNum;
{
    if (parent.value == aNum) {
        return parentNode;
        
    } else {
        if (parent.value < aNum) {
            parentNode = parent;
            parent = parent.right;
            if (parent == nil) {
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert"
                                                                message:@"Element not Present" delegate:self cancelButtonTitle:@"Cancel"
                                                      otherButtonTitles:@"OK", nil];
                [alert show];
            } else {
                [self findParent:aNum];
            }
        } else {
            parentNode = parent;
            parent = parent.left;
            if (parent == nil) {
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert"
                                                                message:@"Element not Present" delegate:self cancelButtonTitle:@"Cancel"
                                                      otherButtonTitles:@"OK", nil];
                [alert show];
            } else {
                [self findParent:aNum];
            }

        }
    }
    return  nil;
}


- (Node *) toLeftLeaves;
{
    pointer = pointer.left;
    return pointer;
}
- (Node *) toRightLeaves;
{
    pointer = pointer.right;
    return pointer;
}

- (Node *) delete: (int) aNum;
{
    Node * temp;
    BOOL x;
    parent = root;
    x = [self isEmpty: (Node *) root];
    if (x == true) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert"
                                                        message:@"The Binary tree is empty" delegate:self cancelButtonTitle:@"Cancel"
                                              otherButtonTitles:@"OK", nil];
        [alert show];
    } else {
        [self findNode:aNum];
        pointer = searchNode;
        if (pointer.value == aNum) {
            if (pointer.right == nil) {
                if (pointer.left == nil) {
                    if (root.value == aNum) {
                        root = pointer = nil;
                    } else {
                        [self findParentNode:aNum];
                        if (parentNode.left.value == pointer.value) {
                            parentNode.left = nil;
                            pointer = root;
                        } else {
                            parentNode.right = nil;
                            pointer = root;
                        }
                    }
                } else {
                    temp = pointer.left;
                    pointer.left = nil;
                    if (root.value == aNum) {
                        pointer = temp;
                        root = pointer;
                    } else {
                        [self findParentNode:pointer.value];
                        parentNode.left = temp;
                        pointer = root;
                    }
                    
                }
            } else {
                if (pointer.left == nil) {
                    temp = pointer.right;
                    pointer.right = nil;
                    if (root.value == aNum) {
                        pointer = temp;
                        root = pointer;
                    } else {
                        [self findParentNode:pointer.value];
                        parentNode.right = temp;
                    }
                    pointer = root;
                } else {
                    temp = pointer;
                    [self toRightLeaves];
                    while (pointer.left != nil) {
                        [self toLeftLeaves];}
                        
                        if (temp.right == pointer) {
                            temp.value = pointer.value;
                            temp.right = pointer.right;
                        } else {
                            if (pointer.right == nil) {
                                [self findParentNode:pointer.value];
                                parentNode.left = nil;
                                temp.value = pointer.value;
                            } else {
                                [self findParentNode:pointer.value];
                                parentNode.left = pointer.right;
                                temp.value = pointer.value;
                            }
                            
                        }
                    pointer = root;
                    }
                }
            }
    }
    parent = root;
    parentNode = root;
    return root;
}
@end
