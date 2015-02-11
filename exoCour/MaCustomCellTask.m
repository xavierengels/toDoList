//
//  MaCustomCellTask.m
//  exoCour
//
//  Created by xavier engels on 09/02/2015.
//  Copyright (c) 2015 xavier engels. All rights reserved.
//

#import "MaCustomCellTask.h"

@implementation MaCustomCellTask

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if(self=[super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        _imageTaskDroite = [[UIImageView alloc]init];
        _imageTaskDroite.frame =  CGRectMake(self.frame.size.width-80, 0, 60, 60);
        [self addSubview:_imageTaskDroite];
        
        _titreTaskLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width-60,30)];
        [self addSubview:_titreTaskLabel];
        _typeTaskLabel = [[UILabel alloc] initWithFrame:CGRectMake(-10, CGRectGetMaxY(_titreTaskLabel.frame), self.frame.size.width-60, 30)];
        _typeTaskLabel.textAlignment =  NSTextAlignmentCenter;
        [self addSubview:_typeTaskLabel];
        _dateTaskLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width-10, 10, 90,60)];
        [_dateTaskLabel setFont:[UIFont fontWithName:@"Arial" size :11]];
        [self addSubview:_dateTaskLabel];
        _prioriteTaskLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, self.frame.size.width-60,30)];
        [self addSubview:_prioriteTaskLabel];
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
