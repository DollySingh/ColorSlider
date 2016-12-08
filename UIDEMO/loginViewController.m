//
//  loginViewController.m
//  UIDEMO
//
//  Created by Student-006 on 20/09/16.
//  Copyright © 2016 Felix. All rights reserved.
//

#import "loginViewController.h"
#import "pickerViewController.h"


@interface loginViewController ()

@end

@implementation loginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    self.view.backgroundColor=[UIColor greenColor];
   
   _container=[[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
   _actualimage=[UIImage imageNamed:@"3"];
   _container.image=_actualimage;
   [self.view addSubview:_container];
   
   //_view1=[[UIView alloc]init];
   //_view1.backgroundColor=[UIColor redColor];
   
   //_view1.frame=CGRectMake(50, 100, 100, 50);
   
   //[self.view addSubview: _view1];
   
    _usernamelabel=[[UILabel alloc]initWithFrame:CGRectMake(50, 100, 100, 50)];
    _usernamelabel.text= @"username";
   
   // _usernamelabel.backgroundColor=[UIColor yellowColor];
   // _usernamelabel.textAlignment=NSTextAlignmentCenter;
   // _usernamelabel.textColor=[UIColor redColor];
   // _usernamelabel.font=[UIFont fontWithName:@"times new roman" size:30];
    [self.view addSubview:_usernamelabel];
   
   _passwordlabel=[[UILabel alloc]initWithFrame:CGRectMake(50,150, 100, 60)];
   _passwordlabel.text= @"password";
   
    //_passwordlabel.backgroundColor=[UIColor redColor];
   //_passwordlabel.textAlignment=NSTextAlignmentCenter;
   // _passwordlabel.textColor=[UIColor blueColor];
   // _passwordlabel.font=[UIFont fontWithName:@"times new roman" size:30];
   [self.view addSubview:_passwordlabel];
   
   
   _usernametf=[[UITextField alloc]initWithFrame:CGRectMake(150, 100, 150, 30 )];
   _usernametf.borderStyle=UITextBorderStyleRoundedRect;
   _usernametf.delegate=self;
   _usernametf.keyboardAppearance=UIKeyboardAppearanceAlert;
   _usernametf.keyboardType=UIKeyboardTypeEmailAddress;
   _usernametf.returnKeyType=UIReturnKeyNext;
   [self.view addSubview:_usernametf];
   
   _passwordtf=[[UITextField alloc]initWithFrame:CGRectMake(150, 150, 150, 30)];
   _passwordtf.borderStyle=UITextBorderStyleRoundedRect;
   _passwordtf.returnKeyType=UIReturnKeyDone;
   _passwordtf.delegate=self;
   _passwordtf.secureTextEntry=YES;
   [self.view addSubview:_passwordtf];
   
   _loginbtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
   _loginbtn.frame=CGRectMake(60, 220, 100, 50);
[_loginbtn setTitle:@"LOGIN" forState:UIControlStateNormal];
[_loginbtn setTitle:@"selected" forState:UIControlStateHighlighted];
   [_loginbtn addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
   [self.view addSubview:_loginbtn];
   
   _cancelbtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
   _cancelbtn.frame=CGRectMake(170, 220, 100, 50);
   [_cancelbtn setTitle:@"CANCEL" forState:UIControlStateNormal];
   [_cancelbtn addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
   [self.view addSubview:_cancelbtn];
   
   _segmentview=[[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"yellow",@"green",@"gray",nil]];
   _segmentview.frame=CGRectMake(40, 300, 230, 50);
   //_segmentviewtintColor=[UIColor greenColor];
   [_segmentview addTarget:self action:@selector(segmentchange) forControlEvents:UIControlEventValueChanged];
   [self.view addSubview:_segmentview];
   
   _switch1=[[UISwitch alloc]initWithFrame:CGRectMake(130, 370, 30, 30)];
   [_switch1 addTarget:self action:@selector(switchchange) forControlEvents:UIControlEventValueChanged];
   [self.view addSubview:_switch1];
   
   _slider =[[UISlider alloc]initWithFrame:CGRectMake(20, 410, 250, 30)];
   _slider.minimumTrackTintColor=[UIColor blueColor];
   _slider.maximumTrackTintColor=[UIColor redColor];
   _slider.minimumValue=1;
   _slider.maximumValue=100;
   [_slider setValue:30 animated:YES];
   
   [_slider addTarget:self action:@selector(sliderchange) forControlEvents:UIControlEventValueChanged];
   [self.view addSubview:_slider];
   
   self.navigationItem.title=@"1VC";
   
   UIBarButtonItem *rbtn= [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(rbtnclick)];
   self.navigationItem .rightBarButtonItem =rbtn;

}
-(void)rbtnclick
{
   pickerViewController * pvc=[[pickerViewController alloc] init];
   [self.navigationController pushViewController:pvc animated:YES];
   
}


-(void)sliderchange
{
   NSLog(@"%.f",_slider.value);
}

-(void)switchchange
{
   if(_switch1.on)
      NSLog(@"on");
   else
      NSLog(@"off");
}
-(void)segmentchange
{
   switch (_segmentview.selectedSegmentIndex) {
      case 0:
         self.view.backgroundColor=[UIColor yellowColor];
         break;
      
      case 1:
         self.view.backgroundColor=[UIColor greenColor];
         break;
      
      case 2:
         self.view.backgroundColor=[UIColor grayColor];
         break;
         
      default:
         break;
   }
}

-(void)btnclick:(id)sender
{
   if(sender==_loginbtn)
   {
      //self.view.backgroundColor=[UIColor redColor];
   
      // if([_usernametf.text isEqualToString:_passwordtf.text])
      // NSLog(@"Strings Equal");
     //  else
     // NSLog(@"Not Equal");
      
      pickerViewController *pvc=[[pickerViewController alloc]init];
      [self.navigationController pushViewController:pvc animated:YES];
}
   else
      self.view.backgroundColor=[UIColor blueColor];
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
   if(textField==_usernametf)
      [_passwordtf becomeFirstResponder];
   else
      [_passwordtf resignFirstResponder];
   return YES;
}


-(BOOL)textFieldShouldbeingEditing:(UITextField *)textField
{
   NSLog(@"should begin");
   return YES;
}

-(void)textFieldDidBeingEditing:(UITextField *)textField
{
   NSLog(@"did being");
}

-(bool)textFieldShouldEndEditing:(UITextField *)textField
{
   NSLog(@"should end");
   return YES;
}

-(void)textFieldDidEndEditing:(UITextField *)textField
{
   NSLog(@"did end");
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
