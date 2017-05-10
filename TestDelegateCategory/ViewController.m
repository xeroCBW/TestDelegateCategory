//
//  ViewController.m
//  Test
//
//  Created by chenbowen on 2017/5/10.
//  Copyright © 2017年 chenbowen. All rights reserved.
//

#import "ViewController.h"
#import "ViewController+Datasource.h"

@interface ViewController ()

/** uitableView*/
@property (nonatomic ,strong) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.tableView];
}


-(UITableView *)tableView{
    
    if (_tableView== nil) {
        
        _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    
    return _tableView;
}

//-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//    
//    return 1;
//}
//
//-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    
//    return 200;
//}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    
//    UITableViewCell *cell = [[UITableViewCell alloc]init];
//        cell.backgroundColor = [UIColor redColor];
//    cell.textLabel.text = [NSString stringWithFormat:@"在VC中实现%ld",(long)indexPath.row];
//    return cell;
//}
//
//
//-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    
//    return  100;
//}

@end
