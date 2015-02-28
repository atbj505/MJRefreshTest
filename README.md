# MJRefreshTest
MJRefresh实验
## 添加头部控件
```objc
[self.tableView addHeaderWithTarget:self action:@selector(headerRereshing)];
```

或者
```objc
[self.tableView addHeaderWithCallback:^{ }];
```
 
## 添加尾部控件
```objc
[self.tableView addFooterWithTarget:self action:@selector(footerRereshing)];
```

或者
```objc
[self.tableView addFooterWithCallback:^{ }];
```

## 自动进入刷新状态
```objc
[self.tableView headerBeginRefreshing];
[self.tableView footerBeginRefreshing];
```
 
## 结束刷新
```objc
[self.tableView headerEndRefreshing];
[self.tableView footerEndRefreshing];
```