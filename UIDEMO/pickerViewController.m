//
//  pickerViewController.m
//  UIDEMO
//
//  Created by Student-006 on 27/09/16.
//  Copyright © 2016 Felix. All rights reserved.
//

#import "pickerViewController.h"
#import "DateViewController.h"

@interface pickerViewController ()

@end

@implementation pickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
   self.view.backgroundColor=[UIColor yellowColor];
   
   _picker=[[UIPickerView alloc]initWithFrame:CGRectMake(40, 50, 320, 350)];
   _picker.delegate=self;
   _picker.dataSource=self;
   [self.view addSubview:_picker];
   
   
   _cityarray=[[NSMutableArray alloc]initWithObjects:@"pune",@"Nashik",@"Mumbai",@"chennai",@"Banglore",@"Delhi",@"Kolkata", nil];
   
   _colorarray=[[NSMutableArray alloc]initWithObjects:@"red",@"blue",@"yellow",@"green",@"gray",@"White",@"cyan",@"brown",@"orange", nil];
   
   _lbl=[[UILabel alloc]initWithFrame:CGRectMake(50, 350, 250, 50)];
    [self.view addSubview:_lbl];
   
   _imgarray=[[NSMutableArray alloc]initWithObjects:@"2",@"3", nil];
   
   
   
   self.navigationItem.title=@"2VC";
   
   UIBarButtonItem *rbtn= [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(rbtnclick)];
   self.navigationItem .rightBarButtonItem =rbtn;
   
}
-(void)rbtnclick
{
   DateViewController * dvc=[[DateViewController alloc] init];
   [self.navigationController pushViewController:dvc animated:YES];
}



-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
   return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
   //if(component==0)
   //    return _cityarray.count;
   //  else
   //     return _colorarray.count;
   
   return _imgarray.count;
}

-(UIView*)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view

{
UIImageView*img=[[UIImageView alloc]initWithImage:[UIImage imageNamed:[_imgarray objectAtIndex:row]]];
 return img;
}


//-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
// {
//    if(component==0)
//         return [_cityarray objectAtIndex:row];
// else
//         return [_colorarray objectAtIndex:row];
//}

//-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row incomponent:(NSInteger)component
//{
     // int row1= [_picker selectedRowInComponent:0];
     //int row2=  [_picker selectedRowInComponent:1];
      
      //_lbl.text=[NSString stringWithFormat:@"%@    %@",[_cityarray objectAtIndex:row1],[_colorarray objectAtIndex:row2]];


//  switch (row2) {
//      case 0:
//          self.view.backgroundColor=[UIColor redColor];
//          break;
         
//      case 1:
//          self.view.backgroundColor=[UIColor blueColor];
//          break;

//      case 2:
//          self.view.backgroundColor=[UIColor whiteColor];
//          break;
         
//      case 3:
//          self.view.backgroundColor=[UIColor greenColor];
//          break;
            
//      case 4:
//          self.view.backgroundColor=[UIColor brownColor];
//          break;
            
//      case 5:
//          self.view.backgroundColor=[UIColor yellowColor];
//          break;
         
//      case 6:
//          self.view.backgroundColor=[UIColor cyanColor];
//          break;
            
//       case 7:
//          self.view.backgroundColor=[UIColor grayColor];
//          break;
         
//       case 8:
//          self.view.backgroundColor=[UIColor redColor];
//          break;
            
//    default:
//    break;
//}
    
//}
//-(CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
//{
   //if(component==0)
    //  return 50;
    // else
    //  return 270;
//}

-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
   return  400;
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
