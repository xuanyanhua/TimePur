//
//  ShareView.m
//  TABBAR_NAV
//
//  Created by xuan on 16/6/16.
//  Copyright © 2016年 xyh. All rights reserved.
//

#import "ShareView.h"

@interface ShareView()
@property (nonatomic, strong) UILabel   *leftLine;
@property (nonatomic, strong) UILabel   *rightLine;
@property (nonatomic, strong) UILabel   *quickLog;
@property (nonatomic, strong) UIButton  *qqBtn;
@property (nonatomic, strong) UIButton  *weiXinBtn;
@property (nonatomic, strong) UIButton  *weiBoBtn;

@end

@implementation ShareView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.leftLine];
        [self addSubview:self.rightLine];
        [self addSubview:self.quickLog];
        [self addSubview:self.qqBtn];
        [self addSubview:self.weiXinBtn];
        [self addSubview:self.weiBoBtn];
        
    }
    return self;
}
- (void)layoutSubviews{
    __weak typeof(self) weakSelf = self;
    [self.leftLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf);
        make.left.equalTo(weakSelf.left).equalTo(15);
        make.size.equalTo(CGSizeMake((self.frame.size.width - 80 - 30)/2, 1));
    }];
    [self.quickLog makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(- 10);
        make.left.equalTo(self.leftLine.right).equalTo(5);
        make.size.equalTo(CGSizeMake(70, 20));
        
    }];
    [self.rightLine makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf);
        make.right.equalTo(weakSelf.right).equalTo(-16);
        make.size.equalTo(self.leftLine);
    }];
    [_qqBtn makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.quickLog.bottom).equalTo(20);
        make.left.equalTo(weakSelf.left).equalTo(61);
        make.size.equalTo(CGSizeMake(45, 45));
        
    }];
    [_weiXinBtn makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.qqBtn);
        make.left.equalTo(self.qqBtn.right).equalTo(70);
        make.size.equalTo(self.qqBtn);
        
    }];
    [_weiBoBtn makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.qqBtn);
        make.right.equalTo(weakSelf.right).equalTo(-61);
        make.size.equalTo(self.qqBtn);
    }];




}
- (UILabel *)leftLine{
    if (!_leftLine) {
        _leftLine = [[UILabel alloc]init];
        _leftLine.backgroundColor = [UIColor lightGrayColor];
        _leftLine.alpha = 0.5;
        
    }
    return _leftLine;
}
- (UILabel *)rightLine{
    if (!_rightLine) {
        _rightLine = [[UILabel alloc]init];
        _rightLine.backgroundColor = [UIColor lightGrayColor];
        _rightLine.alpha = 0.5;
    }
    return _rightLine;
}
- (UILabel *)quickLog{
    if (!_quickLog) {
        _quickLog = [[UILabel alloc]init];
        _quickLog.text = @"一键登录";
        _quickLog.backgroundColor = [UIColor lightGrayColor];
        _quickLog.alpha = 0.5;
    }
    return _quickLog;

}

- (UIButton *)qqBtn{
    if (!_qqBtn) {
        _qqBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_qqBtn setImage:[UIImage imageNamed:@"登录界面qq登陆"] forState:UIControlStateNormal];
    }
    return _qqBtn;
}
- (UIButton *)weiXinBtn{
    if (!_weiXinBtn) {
        _weiXinBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_weiXinBtn setImage:[UIImage imageNamed:@"登录界面微信登录"] forState:UIControlStateNormal];
    }
    return _weiXinBtn;
}

- (UIButton *)weiBoBtn{
    if (!_weiBoBtn) {
        _weiBoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_weiBoBtn setImage:[UIImage imageNamed:@"登陆界面微博登录"] forState:UIControlStateNormal];
    }
    return _weiBoBtn;
}

@end
