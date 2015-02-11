//
//  MaCustomCell.m
//  exoCour
//
//  Created by xavier engels on 22/01/2015.
//  Copyright (c) 2015 xavier engels. All rights reserved.
//

#import "MaCustomCell.h"

@implementation MaCustomCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if(self=[super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
    _imageDroite = [[UIImageView alloc]init];
    _imageDroite.frame =  CGRectMake(self.frame.size.width-80, 0, 60, 60);
    [self addSubview:_imageDroite];
    
    _titreProjetLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width-60,30)];
    [self addSubview:_titreProjetLabel];
    _typeProjetLabel = [[UILabel alloc] initWithFrame:CGRectMake(-10, CGRectGetMaxY(_titreProjetLabel.frame), self.frame.size.width-60, 30)];
    _typeProjetLabel.textAlignment =  NSTextAlignmentCenter;
    [self addSubview:_typeProjetLabel];
    _dateProjetLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width-10, 10, 90,60)];
    [_dateProjetLabel setFont:[UIFont fontWithName:@"Arial" size :11]];
    [self addSubview:_dateProjetLabel];
    _prioriteProjetLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, self.frame.size.width-60,30)];
    [self addSubview:_prioriteProjetLabel];
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
