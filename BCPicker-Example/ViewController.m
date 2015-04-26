//
//  ViewController.m
//  BCPicker-Example
//
//  Created by Dilum Navanjana on 4/14/15.
//  Copyright (c) 2015 Dilum Navanjana. All rights reserved.
//

#import "ViewController.h"
#import "BCPicker.h"

@interface ViewController ()

@property(nonatomic,strong)BCPicker *bcPicker;

@end

@implementation ViewController
@synthesize bcPicker,txtTargetField;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initCustomPicker];
}


-(void)initCustomPicker
{
    bcPicker=[[BCPicker alloc] initWithView:self.view]; //init BCPicker with self.view
    bcPicker.strTitle=@"SELECT"; //Set  titile
    bcPicker.txtTargetField=txtTargetField; //Set target of the Picker
    [bcPicker.lblPickerHeader setTextColor:[UIColor whiteColor]];
    bcPicker.arrPickerItems = [[NSArray alloc]initWithObjects:@"Driver",@"Branch Manager",@"Manager",@"Owner",@"Sales Person",@"Other", nil];
    
    [bcPicker loadDate]; //finally Load data
}

- (IBAction)btnClicked:(id)sender {
    [bcPicker togglePicker];
}
@end
