//
//  BSTViewController.h
//  BinarySearchTree
//
//  Created by Mohan on 4/4/14.
//  Copyright (c) 2014 Shravan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Node.h"
#import "BST.h"

@interface BSTViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *set1;
@property (weak, nonatomic) IBOutlet UITextField *set2;


- (IBAction)add:(id)sender;
- (IBAction)display:(id)sender;
- (void) display;

@property (weak, nonatomic) IBOutlet UITextField *output;

@property (nonatomic,strong) BST  * binaryTree1;
@property (nonatomic,strong) BST  * binaryTree2;
@property (nonatomic,strong) BST  * binaryTree3;


@end
