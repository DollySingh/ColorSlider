//
//  multiViewController.h
//  UIDEMO
//
//  Created by Student-006 on 03/10/16.
//  Copyright © 2016 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface multiViewController : UIViewController<UITableViewDelegate ,UITableViewDataSource>

@property(nonatomic ,retain) NSMutableArray *array1;
@property(nonatomic ,retain) UITableView *table;
@property(nonatomic ,retain)UIButton *btn;
@property (nonatomic ,retain) UITextField *tf1, *tf2;

@property(nonatomic,retain)UILabel *lf1,*lf2;

@end
