//
//  HMCollectionViewCell.m
//  coverFlow显示图片
//
//  Created by user on 16/8/21.
//  Copyright © 2016年 user. All rights reserved.
//

#import "HMCollectionViewCell.h"

@interface HMCollectionViewCell ()

@property (nonatomic, weak)UIImageView *imageView;

@end

@implementation HMCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI {
    
    //添加imageView
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.bounds];
    imageView.backgroundColor = [UIColor orangeColor];
    
    //填充模式
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    imageView.clipsToBounds = YES;
    
    //切圆角
    imageView.layer.cornerRadius = 10;
    imageView.layer.masksToBounds = YES;
    
    [self.contentView addSubview:imageView];
    
    _imageView = imageView;
}

- (void)setImage:(UIImage *)image {
    _image = image;
    
    _imageView.image = image;
}
@end
