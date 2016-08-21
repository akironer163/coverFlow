//
//  HMCollectionViewFlowLayout.m
//  coverFlow显示图片
//
//  Created by user on 16/8/21.
//  Copyright © 2016年 user. All rights reserved.
//

#import "HMCollectionViewFlowLayout.h"

@implementation HMCollectionViewFlowLayout

//准备布局
- (void)prepareLayout {
    [super prepareLayout];
    
    //设置大小
    CGFloat itemH = self.collectionView.bounds.size.height * 0.8;
    CGFloat itemW = itemH;
    self.itemSize = CGSizeMake(itemW, itemH);
    
    //间距
    self.minimumLineSpacing = 1;
    
    //滚动方法
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    //内边距
    CGFloat inset = (self.collectionView.bounds.size.width - itemW) * 0.5;
    self.sectionInset = UIEdgeInsetsMake(0, inset, 0, inset);
    
    //隐藏
    
}

@end
