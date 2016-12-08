//
//  multiViewController.m
//  UIDEMO
//
//  Created by Student-006 on 03/10/16.
//  Copyright © 2016 Felix. All rights reserved.
//

#import "multiViewController.h"

@interface multiViewController ()

@end

@implementation multiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
   
   [self.view setBackgroundColor:[UIColor redColor]];
   
   _lf1=[[UILabel alloc] initWithFrame:CGRectMake(20, 60, 40, 25)];
   [_lf1 setTextColor:[UIColor redColor]];
   [_lf1 setText:@"no 1"];
   [self.view addSubview:_lf1];
   
   _lf2=[[UILabel alloc] initWithFrame:CGRectMake(50, 90, 70, 30)];
   [_lf2 setTextColor:[UIColor redColor]];
   [_lf2 setText:@"no 2"];
   [self.view addSubview:_lf2];
   
   _tf1=[[UITextField alloc]initWithFrame:CGRectMake(80, 130, 75, 30 )];
   _tf1.borderStyle=UITextBorderStyleRoundedRect;
   [_tf1 setTextColor:[UIColor blueColor]];
   [_tf1 setText:@"10"];
   [self.view addSubview:_tf1];
   
   _tf2=[[UITextField alloc]initWithFrame:CGRectMake(150, 150, 75, 30 )];
   _tf2.borderStyle=UITextBorderStyleRoundedRect;
   [_tf2 setTextColor:[UIColor blueColor]];
   [_tf2 setText:@"10"];
   [self.view addSubview:_tf2];
   
   _table=[[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
   _table.delegate=self;
   _table.dataSource=self;
   [self.view addSubview:_table];
   
   _array1=[[NSMutableArray alloc]init];
   
   _btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
   _btn.frame=CGRectMake(200, 90, 100, 30);
   [_btn setBackgroundColor:[UIColor whiteColor]];
   [_btn setTitle:@"calculate" forState:UIControlStateNormal];
   [_btn addTarget:self action:@selector(calculateTable) forControlEvents:UIControlEventTouchUpInside];
   [self.view addSubview:_btn];
   
   
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
   return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
   return  _array1.count;
}

-(void)calculateTable
{
[_array1 removeAllObjects];
   int no1=[_tf1.text intValue];
   int no2=[_tf2.text intValue];
   for(int i=1 ; i<=no2 ; i++)
{
 NSString * temp =[NSString stringWithFormat: @"%d * %d= %d",no1 ,i , no1 *i];
   [_array1 addObject :temp];
}
    [self.table reloadData];
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   UITableViewCell *cell= [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1  reuseIdentifier:nil];
   
   cell.textLabel.text= _array1[indexPath.row];
   return cell;
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
