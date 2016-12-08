//
//  colorViewController.m
//  UIDEMO
//
//  Created by Student-006 on 27/09/16.
//  Copyright © 2016 Felix. All rights reserved.
//

#import "colorViewController.h"
#import "MyTableViewController.h"

@interface colorViewController ()

@end

@implementation colorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   // Do any additional setup after loading the view.
   
   _view1=[[UIView alloc]initWithFrame:CGRectMake(20, 50, 150, 200)];
   self.view.backgroundColor=[UIColor whiteColor];
   [self.view addSubview:_view1];
   
   
   _redslider =[[UISlider alloc]initWithFrame:CGRectMake(20, 410, 250, 30)];
   _redslider.minimumTrackTintColor=[UIColor blueColor];
   _redslider.minimumValue=0;
   _redslider.maximumValue=255;
   [_redslider addTarget:self action:@selector(sliderchange:) forControlEvents:UIControlEventValueChanged];
   [self.view addSubview:_redslider];
   
   
   _greenslider =[[UISlider alloc]initWithFrame:CGRectMake(20, 450, 250, 30)];
   _greenslider.minimumTrackTintColor=[UIColor greenColor];
   _greenslider.minimumValue=0;
   _greenslider.maximumValue=255;
   [_greenslider addTarget:self action:@selector(sliderchange:) forControlEvents:UIControlEventValueChanged];
   [self.view addSubview:_greenslider];
   
   
   _blueslider =[[UISlider alloc]initWithFrame:CGRectMake(20, 500, 250, 30)];
   _blueslider.minimumTrackTintColor=[UIColor redColor];
   _blueslider.minimumValue=0;
   _blueslider.maximumValue=255;
   [_blueslider addTarget:self action:@selector(sliderchange:) forControlEvents:UIControlEventValueChanged];
   [self.view addSubview:_blueslider];
   
   
   
   self.navigationItem.title=@"5VC";
   
   UIBarButtonItem *rbtn= [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(rbtnclick)];
   self.navigationItem .rightBarButtonItem =rbtn;
   
}

   -(void)rbtnclick
   {
      MyTableViewController * mvc=[[MyTableViewController alloc] init];
      [self.navigationController pushViewController:mvc animated:YES];
   
   }


-(void)sliderchange:(UISlider*)sender
{
   _view1.backgroundColor=[UIColor colorWithRed:_redslider.value/255.0 green:_greenslider.value/255.0 blue:_blueslider.value/255.0 alpha:1.0];
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

@end
