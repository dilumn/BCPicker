//
//  BCPicker.h
//  BCPicker-Example
//
//  Created by Dilum Navanjana on 4/14/15.
//  Copyright (c) 2015 Dilum Navanjana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BCPicker : NSObject <UIPickerViewDataSource,UIPickerViewDelegate>

@property(nonatomic,strong)UIView *mainView;
@property(nonatomic,strong)NSString *strTitle,*strSelectedPick;
@property(nonatomic,strong)UITextField *txtTargetField;
@property(nonatomic,strong)UIPickerView *pickerView;
@property(nonatomic,strong)UIView *basicView;
@property(nonatomic,strong)NSArray *arrPickerItems;
@property(nonatomic,strong)UILabel *lblPickerHeader;

-(id)initWithView:(UIView *)_view;
-(void)togglePicker;
-(void)hidePicker;
-(void)showPicker;
-(void)loadDate;

@end