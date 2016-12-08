//
//  XIBNViewController.m
//  UIDEMO
//
//  Created by Student-006 on 04/10/16.
//  Copyright © 2016 Felix. All rights reserved.
//

#import "XIBNViewController.h"

@interface XIBNViewController ()

@end

@implementation XIBNViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnclick:(id)sender {
   _lbl1.text= @"Hiii....";
   
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
   return  YES;
}


@end
