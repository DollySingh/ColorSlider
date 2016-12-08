//
//  TableViewController.h
//  UIDEMO
//
//  Created by Student-006 on 29/09/16.
//  Copyright © 2016 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,retain) UITableView *table;

@property(nonatomic,retain)NSMutableArray *cityarray, *colorarray;

@end
