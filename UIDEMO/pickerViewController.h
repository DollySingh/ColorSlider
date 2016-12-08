//
//  pickerViewController.h
//  UIDEMO
//
//  Created by Student-006 on 27/09/16.
//  Copyright © 2016 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface pickerViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>

@property(nonatomic,retain)UIPickerView *picker;

@property(nonatomic,retain)NSMutableArray *cityarray,*colorarray,*imgarray;

@property(nonatomic,retain)UILabel *lbl;


@end
