//
//  ProjectViewController.m
//  exoCour
//
//  Created by xavier engels on 08/02/2015.
//  Copyright (c) 2015 xavier engels. All rights reserved.
//

#import "ProjectViewController.h"
#import "MaCustomCellTask.h"
@interface ProjectViewController ()

@end

@implementation ProjectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tableauTaches = [[NSMutableArray alloc]init];
    NSMutableDictionary * dictPomme = [NSMutableDictionary new];
    [dictPomme setObject:@"tache test" forKey:@"titre"];
    [dictPomme setObject:@"développement" forKey:@"type"];
    [dictPomme setObject:@"02/02/2015" forKey:@"date"];
    [dictPomme setObject:@"Critique" forKey:@"priorite"];
    [dictPomme setObject:@"pomme.jpg" forKey:@"image"];
    
    NSMutableDictionary * dictFraise = [NSMutableDictionary new];
    [dictFraise setObject:@"tache esgi" forKey:@"titre"];
    [dictFraise setObject:@"développement" forKey:@"type"];
    [dictFraise setObject:@"02/02/2015" forKey:@"date"];
    [dictFraise setObject:@"Critique" forKey:@"priorite"];
    [dictFraise setObject:@"pomme.jpg" forKey:@"image"];
    
    NSMutableDictionary * dictBanane = [NSMutableDictionary new];
    [dictBanane setObject:@"tache iphone" forKey:@"titre"];
    [dictBanane setObject:@"développement" forKey:@"type"];
    [dictBanane setObject:@"02/02/2015" forKey:@"date"];
    [dictBanane setObject:@"C'est la merde" forKey:@"priorite"];
    [dictBanane setObject:@"pomme.jpg" forKey:@"image"];
    
    
    [_tableauTaches addObject:dictPomme];
    [_tableauTaches addObject:dictFraise];
    [_tableauTaches addObject:dictBanane];
    // NSMutableDictionary * case0dutableau = [_tableauFruits objectAtIndex:0];
    // NSLog(@"%@",[case0dutableau objectForKey:@"type"]);
    
    
    
    
    NSLog(@"%@",_tableauTaches);
    self.view.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1];
    _myTask = [[UITableView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.topView.frame),self.view.frame.size.width,self.view.frame.size.height-CGRectGetMaxY(self.topView.frame))];
    _myTask.rowHeight = 60;
    _myTask.delegate =  self;
    _myTask.dataSource= self;
    [_myTask setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:_myTask];
    
}

-(NSInteger) tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger)section
{
    return [_tableauTaches count];
}

-(UITableViewCell *) tableView:(UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId =@"uniqueIdentifier";
   
    MaCustomCellTask *cellTask = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    
    
   
    if(!cellTask)
    {
        cellTask =  [[MaCustomCellTask alloc]initWithStyle:(UITableViewCellStyleSubtitle) reuseIdentifier:cellId];
    }
    NSMutableDictionary * dict = [_tableauTaches objectAtIndex:indexPath.row];
    
    

    cellTask.titreTaskLabel.text =[dict objectForKey:@"titre"];
    cellTask.typeTaskLabel.text = [dict objectForKey:@"type"];
    cellTask.imageTaskDroite.image = [UIImage imageNamed:[dict objectForKey:@"image"]];
    cellTask.dateTaskLabel.text = [dict objectForKey:@"date"];
    cellTask.prioriteTaskLabel.text = [dict objectForKey:@"priorite"];
    
   // UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    //set the position of the button
   /* button.frame = CGRectMake(cellTask.frame.origin.x + 150, cellTask.frame.origin.y + 20, 120, 50);
    [button setTitle:@"tâches" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(afficheProject) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor= [UIColor clearColor];
    [cell.contentView addSubview:button];*/
    
    return cellTask;
}

/*-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSLog(@"TEST");
    if([[segue identifier] isEqualToString:@"detailSegue"])
    {
        NSInteger selectedIndex = [[self.tableView indexPathForSelectedRow] row];
        DetailViewController *dvc = [segue destinationViewController];
        dvc.siteSelectionne = [NSString stringWithFormat:@"%@", [adressesWeb objectAtIndex:selectedIndex]];
    }
}*/


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
