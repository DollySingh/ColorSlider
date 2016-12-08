//
//  XIBNViewController.h
//  UIDEMO
//
//  Created by Student-006 on 04/10/16.
//  Copyright © 2016 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XIBNViewController :UIViewController 

@property (weak, nonatomic) IBOutlet UITextField *tf1;


@property (weak, nonatomic) IBOutlet UIButton *btn;
@property (weak, nonatomic) IBOutlet UILabel *lbl1;
@property (weak, nonatomic) IBOutlet UITableView *tableview;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerview;

- (IBAction)btnclick:(id)sender;



@end
