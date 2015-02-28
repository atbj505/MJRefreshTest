//
//  TableViewController.m
//  MJRefreshTest
//
//  Created by 杨启晖 on 15/2/28.
//  Copyright (c) 2015年 NationSky. All rights reserved.
//

#import "TableViewController.h"
#import "MJRefresh.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:identifier];
    [self.tableView addHeaderWithTarget:self action:@selector(headerRefresh)];
    [self.tableView addFooterWithTarget:self action:@selector(footerRefresh)];
}

- (void)headerRefresh{
    [self.tableView reloadData];
    [self.tableView headerEndRefreshing];
}
- (void)footerRefresh{
    [self.tableView reloadData];
    [self.tableView footerEndRefreshing];
}
#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 40;
}
static NSString *identifier = @"cell";
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];

    cell.textLabel.text = [NSString stringWithFormat:@"%d",indexPath.row];
    return cell;
}


@end
