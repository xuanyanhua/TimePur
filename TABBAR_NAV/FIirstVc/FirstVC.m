//
//  FirstVC.m
//  TABBAR_NAV
//
//  Created by xuan on 16/6/16.
//  Copyright © 2016年 xyh. All rights reserved.
//

#import "FirstVC.h"
#import "LoginView.h"
#import "ShareView.h"


@interface FirstVC ()

@end

@implementation FirstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = RGB(245, 245, 245, 1.0);
    [self UI];
    
    
}
- (void)UI{
    
    LoginView *lg = [[LoginView alloc]init];
    [self.view addSubview:lg];
    [lg makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.left);
        make.size.equalTo(CGSizeMake(SEC_WIDTH, 170));
        make.top.equalTo(64);
    }];
    
    ShareView *shar = [[ShareView alloc]init];
    [self.view addSubview:shar];
    [shar makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(lg.bottom).equalTo(35);
        make.left.equalTo(self.view.left);
        make.size.equalTo(CGSizeMake(SEC_WIDTH, 62));
    }];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
