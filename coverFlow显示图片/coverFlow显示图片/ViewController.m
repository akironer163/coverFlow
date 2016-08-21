//
//  ViewController.m
//  coverFlow显示图片
//
//  Created by user on 16/8/21.
//  Copyright © 2016年 user. All rights reserved.
//

#import "ViewController.h"
#import "HMCollectionViewCell.h"
#import "HMCollectionViewFlowLayout.h"

static NSString *cellID = @"cellID";

@interface ViewController ()<UICollectionViewDataSource>

@end

@implementation ViewController {
    
    NSArray<UIImage *> *_imageList;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
    
    [self loadData];
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return _imageList.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    HMCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    
    cell.image = _imageList[indexPath.row];
    
    return cell;
}

- (void)setupUI {
    
    HMCollectionViewFlowLayout *flowLayout = [[HMCollectionViewFlowLayout alloc] init];
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 200) collectionViewLayout:flowLayout];
    collectionView.backgroundColor = [UIColor lightGrayColor];
    collectionView.showsHorizontalScrollIndicator = NO;
    
    collectionView.dataSource = self;
    
    [collectionView registerClass:[HMCollectionViewCell class] forCellWithReuseIdentifier:cellID];
    
    [self.view addSubview:collectionView];
}

- (void)loadData {
    
    _imageList = @[
                   [UIImage imageNamed:@"01"],
                   [UIImage imageNamed:@"02"],
                   [UIImage imageNamed:@"03"]
                   ];
    
}
@end
