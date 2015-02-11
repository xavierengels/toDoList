//
//  ProjectViewController.h
//  exoCour
//
//  Created by xavier engels on 08/02/2015.
//  Copyright (c) 2015 xavier engels. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MotherViewController.h"
@interface ProjectViewController : MotherViewController<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic)NSMutableArray *tableauTaches;
@property(nonatomic)UITableView *myTask;
@property(nonatomic)UIView *topView;

@end
