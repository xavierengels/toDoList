//
//  SecondViewController.m
//  exoCour
//
//  Created by xavier engels on 22/01/2015.
//  Copyright (c) 2015 xavier engels. All rights reserved.
//

#import "SecondViewController.h"
#import "ProjectViewController.h"
#import "MaCustomCell.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

-(void)afficheProject
{
    ProjectViewController * pvc = [[ProjectViewController alloc ]init];
    [self.navigationController pushViewController:pvc animated:YES];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tableauFruits = [[NSMutableArray alloc]init];
    NSMutableDictionary * dictPomme = [NSMutableDictionary new];
    [dictPomme setObject:@"Projet test" forKey:@"titre"];
    [dictPomme setObject:@"développement" forKey:@"type"];
    [dictPomme setObject:@"02/02/2015" forKey:@"date"];
    [dictPomme setObject:@"Critique" forKey:@"priorite"];
    [dictPomme setObject:@"pomme.jpg" forKey:@"image"];
    
    NSMutableDictionary * dictFraise = [NSMutableDictionary new];
    [dictFraise setObject:@"Projet esgi" forKey:@"titre"];
    [dictFraise setObject:@"développement" forKey:@"type"];
    [dictFraise setObject:@"02/02/2015" forKey:@"date"];
    [dictFraise setObject:@"Critique" forKey:@"priorite"];
    [dictFraise setObject:@"pomme.jpg" forKey:@"image"];
    
    NSMutableDictionary * dictBanane = [NSMutableDictionary new];
    [dictBanane setObject:@"Projet iphone" forKey:@"titre"];
    [dictBanane setObject:@"développement" forKey:@"type"];
    [dictBanane setObject:@"02/02/2015" forKey:@"date"];
    [dictBanane setObject:@"C'est la merde" forKey:@"priorite"];
    [dictBanane setObject:@"pomme.jpg" forKey:@"image"];
    
    
    [_tableauFruits addObject:dictPomme];
    [_tableauFruits addObject:dictFraise];
    [_tableauFruits addObject:dictBanane];
   // NSMutableDictionary * case0dutableau = [_tableauFruits objectAtIndex:0];
   // NSLog(@"%@",[case0dutableau objectForKey:@"type"]);


    
    
    NSLog(@"%@",_tableauFruits);
    self.view.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1];
    _maListe = [[UITableView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.topView.frame),self.view.frame.size.width,self.view.frame.size.height-CGRectGetMaxY(self.topView.frame))];
    _maListe.rowHeight = 60;
    _maListe.delegate =  self;
    _maListe.dataSource= self;
    [_maListe setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:_maListe];
    
}

-(NSInteger) tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger)section
{
    return [_tableauFruits count];
}

-(UITableViewCell *) tableView:(UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId =@"uniqueIdentifier";
    MaCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if(!cell)
    {
        cell =  [[MaCustomCell alloc]initWithStyle:(UITableViewCellStyleSubtitle) reuseIdentifier:cellId];
    }
    NSMutableDictionary * dict = [_tableauFruits objectAtIndex:indexPath.row];
  
    
    cell.titreProjetLabel.text =[dict objectForKey:@"titre"];
    cell.typeProjetLabel.text = [dict objectForKey:@"type"];
    cell.imageDroite.image = [UIImage imageNamed:[dict objectForKey:@"image"]];
    cell.dateProjetLabel.text = [dict objectForKey:@"date"];
    cell.prioriteProjetLabel.text = [dict objectForKey:@"priorite"];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    //set the position of the button
    button.frame = CGRectMake(cell.frame.origin.x + 150, cell.frame.origin.y + 20, 120, 50);
    [button setTitle:@"tâches" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(afficheProject) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor= [UIColor clearColor];
    [cell.contentView addSubview:button];
    
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
