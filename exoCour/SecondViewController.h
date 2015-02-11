//
//  SecondViewController.h
//  exoCour
//
//  Created by xavier engels on 22/01/2015.
//  Copyright (c) 2015 xavier engels. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MotherViewController.h"
#import "ProjectViewController.h"
@interface SecondViewController : MotherViewController<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic)UITableView *maListe;
@property(nonatomic)NSMutableArray *tableauFruits;
@end
