//
//  MotherViewController.m
//  exoCour
//
//  Created by xavier engels on 22/01/2015.
//  Copyright (c) 2015 xavier engels. All rights reserved.
//

#import "MotherViewController.h"

@interface MotherViewController ()

@end

@implementation MotherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _topView = [[UIView alloc] initWithFrame:CGRectMake(0,0,self.view.frame.size.width,50)];
    [_topView setBackgroundColor:[UIColor purpleColor]];
    [self.view addSubview:_topView];
    
    _backBtn =  [[UIButton alloc] init];
    _backBtn.frame = CGRectMake(3, 3, 100, 35);
    _backBtn.backgroundColor = [UIColor greenColor];
    [_backBtn addTarget:self action:@selector(back) forControlEvents:(UIControlEventTouchDown)];
    [_backBtn setTitle:@"Retour" forState:UIControlStateNormal];
    [_topView addSubview:_backBtn];
    
}


-(void)back
{
    [self.navigationController popViewControllerAnimated:YES];
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
