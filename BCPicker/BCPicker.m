//
//  BCPicker.m
//  BCPicker-Example
//
//  Created by Dilum Navanjana on 4/14/15.
//  Copyright (c) 2015 Dilum Navanjana. All rights reserved.
//

#import "BCPicker.h"

@implementation BCPicker

@synthesize lblPickerHeader,strSelectedPick,strTitle,arrPickerItems,mainView,basicView,pickerView,txtTargetField;

-(id)initWithView:(UIView *)_view
{
    self=[super init];
    if(self)
    {
        mainView=_view;
        [self loadDatePicker];
    }
    return self;
}

-(void)loadDatePicker
{
    CGSize size=[UIScreen mainScreen].bounds.size;
    basicView=[[UIView alloc] initWithFrame:CGRectMake(0, size.height+100, size.width, 185)];
    basicView.backgroundColor=[UIColor colorWithRed:2.0/255.0 green:177.0/255.0 blue:170.0/255.0 alpha:1];
    pickerView=[[UIPickerView alloc] initWithFrame:CGRectMake(0, 30, size.width, 150)];
    pickerView.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:0.9];
    pickerView.delegate=self;
    pickerView.dataSource=self;
    [basicView addSubview:pickerView];
    [mainView addSubview:basicView];
    
    lblPickerHeader=[[UILabel alloc] initWithFrame:CGRectMake(10, 2, 200, 30)];
//    [lblPickerHeader dobeoSofiaProBoldFont:bodyFontSize uicolor:[UIColor whiteColor]];
    [basicView addSubview:lblPickerHeader];
}

-(void)loadDate
{
    
    strSelectedPick = [arrPickerItems objectAtIndex:0];
}

-(void)handleDate:(NSString *)month
{
    [pickerView reloadComponent:1];
}

-(void)showPicker
{
    [lblPickerHeader setText:strTitle];
    CGSize size=[[UIScreen mainScreen] bounds].size;
    
    [UIView animateWithDuration:0.3
                          delay:0
                        options:UIViewAnimationOptionTransitionNone
                     animations:^{
                         
                         [basicView setFrame:CGRectMake( 0,size.height-180, size.width, 180)];
                         
                     }
                     completion:^(BOOL finished){
                         
                     }];
    
}
-(void)hidePicker
{
    CGSize size=[[UIScreen mainScreen] bounds].size;
    
    [UIView animateWithDuration:0.3
                          delay:0
                        options:UIViewAnimationOptionTransitionNone
                     animations:^{
                         
                         [basicView setFrame:CGRectMake( 0,size.height+100, size.width, 180)];
                         
                     }
                     completion:^(BOOL finished){
                         
                     }];
    
}
-(void)togglePicker
{
    [lblPickerHeader setText:strTitle];
    CGSize size=[[UIScreen mainScreen] bounds].size;
    
    [UIView animateWithDuration:0.3
                          delay:0
                        options:UIViewAnimationOptionTransitionNone
                     animations:^{
                         
                         if(basicView.frame.origin.y==size.height+100)
                             [basicView setFrame:CGRectMake( 0,size.height-180, size.width, 180)];
                         else{
                             [basicView setFrame:CGRectMake( 0,size.height+100, size.width, 180)];
                             
                         }
                     }
                     completion:^(BOOL finished){
                         
                     }];
    
}


#pragma mark picker view delegates

- (void)pickerView:(UIPickerView *)pickerView didSelectRow: (NSInteger)row inComponent:(NSInteger)component
{
    strSelectedPick=[arrPickerItems objectAtIndex:row];
    
    txtTargetField.text=[NSString stringWithFormat:@"%@",strSelectedPick];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    return [arrPickerItems count];
}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component {
    return [[UIScreen mainScreen] bounds].size.width;
    
}
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    
    UILabel* tView = (UILabel*)view;
    if (!tView){
        tView = [[UILabel alloc] init];
        tView.adjustsFontSizeToFitWidth = YES;
        [tView setTextAlignment:NSTextAlignmentCenter];
//        [tView dobeoSofiaProBoldFont:15 uicolor:[UIColor colorWithRed:2.0/255.0 green:177.0/255.0 blue:170.0/255.0 alpha:1]];
        
        [tView setText:[arrPickerItems objectAtIndex:row]];
        return tView;
    }
    return nil;
}

@end
