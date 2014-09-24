//
//  BSTViewController.m
//  BinarySearchTree
//
//  Created by Mohan on 4/4/14.
//  Copyright (c) 2014 Shravan. All rights reserved.
//

#import "BSTViewController.h"

@interface BSTViewController ()

@end

@implementation BSTViewController

@synthesize binaryTree1;
@synthesize binaryTree2;
@synthesize binaryTree3;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    binaryTree1 = [[BST alloc]init];
    binaryTree2 = [[BST alloc]init];
    binaryTree3 = [[BST alloc]init];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






- (IBAction)add:(id)sender {
    int a;
    a= [_set1.text integerValue];
    if (a == nil) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert"
                                                        message:@"Please enter a single integer value to add" delegate:self cancelButtonTitle:@"Cancel"
                                              otherButtonTitles:@"OK", nil];
        [alert show];
        _set1.text = nil;
    } else {
        [binaryTree1 addNum:a];
        _set1.text = nil;
    }
    
}

- (IBAction)display:(id)sender {
    
    [self display];
}

- (void) display;
{
   _output.text = [NSString stringWithFormat:@"%@%@%@%@%@",[NSString stringWithFormat:@"Set1 : "],[binaryTree1 displayValues], [NSString stringWithFormat:@"    "], [NSString stringWithFormat:@"Set2 : "], [binaryTree2 displayValues]];
}

- (IBAction)delete:(id)sender {
    int a;
    a= [_set1.text integerValue];
    if (a == nil){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert"
                                                        message:@"Please enter a single integer value to delete" delegate:self cancelButtonTitle:@"Cancel"
                                              otherButtonTitles:@"OK", nil];
        [alert show];
        _set1.text = nil;
    } else {
        [binaryTree1 delete:a];
        [self display];
        _set1.text = nil;
    }
}
- (IBAction)clear:(id)sender {
    binaryTree1 = [[BST alloc]init];
    _output.text = nil;
}

- (IBAction)save:(id)sender {
    int i;
    id arrayElement;
    binaryTree2 = [[BST alloc]init];
    NSString *set1String = [binaryTree1 displayValues];
    NSArray *set1Array = [set1String componentsSeparatedByString:@" "];
    for( i=0 ; i< [set1Array count]; i++)
    {
        arrayElement = [set1Array objectAtIndex:i];
        if ([arrayElement  isEqual: @""]) {
            
        } else {
            [binaryTree2 addNum:[arrayElement integerValue]];
        }
        
    }
    _set2.text = [binaryTree2 displayValues];
}

- (IBAction)switch:(id)sender {
    BST* temp;
    temp = binaryTree1;
    binaryTree1 = binaryTree2;
    binaryTree2 = temp;
    [self display];
    _set2.text = [binaryTree2 displayValues];
}
- (IBAction)union:(id)sender {
    int i;
    id arrayElement;
    NSString *set2String = _set2.text;
    NSArray *set2Array = [set2String componentsSeparatedByString:@" "];
    for( i=0 ; i< [set2Array count]; i++)
    {
         arrayElement = [set2Array objectAtIndex:i];
        [binaryTree1 addNum:[arrayElement integerValue]];
        
    }
    [self display];
}



@end
