//
//  ViewController.m
//  coverFlow显示图片
//
//  Created by user on 16/8/21.
//  Copyright © 2016年 user. All rights reserved.
//

#import "ViewController.h"

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
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    
    cell.contentView.backgroundColor = [UIColor redColor];
    
    return cell;
}

- (void)setupUI {
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 200) collectionViewLayout:flowLayout];
    collectionView.backgroundColor = [UIColor lightGrayColor];
    
    collectionView.dataSource = self;
    
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:cellID];
    
    [self.view addSubview:collectionView];
}

- (void)loadData {
    
    _imageList = @[
                   [UIImage imageNamed:@"01"],
                   [UIImage imageNamed:@"01"],
                   [UIImage imageNamed:@"01"]
                   ];
    
}
@end
