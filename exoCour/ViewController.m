//
//  ViewController.m
//  exoCour
//
//  Created by xavier engels on 22/01/2015.
//  Copyright (c) 2015 xavier engels. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface ViewController ()

@end

@implementation ViewController
-(void)afficheVC3
{
    ThirdViewController * vc = [[ThirdViewController alloc ]init];
    [self.navigationController pushViewController:vc animated:YES];
}

-(void)afficheVC2
{
   
    SecondViewController * vc = [[SecondViewController alloc ]init];
    [self.navigationController pushViewController:vc animated:YES];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.goTo2BTN =  [[UIButton alloc] init];
    _goTo2BTN.frame =  CGRectMake((self.view.frame.size.width-120)/2, 120, 150, 35);
    _goTo2BTN.backgroundColor = [UIColor greenColor];
    [_goTo2BTN addTarget:self action:@selector(afficheVC2) forControlEvents:UIControlEventTouchDown];
    [_goTo2BTN setTitle:@"Liste des tâches" forState:UIControlStateNormal];
    [self.view addSubview:_goTo2BTN];
    
    self.goTo3BTN =  [[UIButton alloc] init];
    _goTo3BTN.frame =  CGRectMake(_goTo2BTN.frame.origin.x,CGRectGetMaxY(_goTo2BTN.frame)+10,_goTo2BTN.frame.size.width,_goTo2BTN.frame.size.height);
    _goTo3BTN.backgroundColor = [UIColor redColor];
    [_goTo3BTN addTarget:self action:@selector(afficheVC3) forControlEvents:UIControlEventTouchDown];
    [_goTo3BTN setTitle:@"Va au 3" forState:UIControlStateNormal];
    [self.view addSubview:_goTo3BTN];
    
    self.backBtn.hidden=1;
    CGRect rectTF = CGRectMake(10,380,100,20); // Définition d'un rectangle
    _textSaisi = [[UITextField alloc] initWithFrame:rectTF];
    _textSaisi.borderStyle = UITextBorderStyleLine;
    [self.view addSubview: _textSaisi];
    
    CGRect rectLab = CGRectMake(10,280,140,80); // Définition d'un rectangle
    _monLabel = [[UILabel alloc] initWithFrame: rectLab];
    _monLabel.text = @"Ajouter une tâche";
    [self.view addSubview: _monLabel];
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
