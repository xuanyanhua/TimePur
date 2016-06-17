//
//  LoginView.m
//  TABBAR_NAV
//
//  Created by xuan on 16/6/16.
//  Copyright © 2016年 xyh. All rights reserved.
//

#import "LoginView.h"


@interface LoginView ()<UITextFieldDelegate>

@property (nonatomic, strong) UILabel *backlable;
@property (nonatomic, strong) UITextField   *nameText;
@property (nonatomic, strong) UITextField    *passText;
@property (nonatomic, strong) UILabel   *lineLable;
@property (nonatomic, strong) UIButton   *loginBtn;
@property (nonatomic, strong) UIButton   *registBtn;

@end

@implementation LoginView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self AddUI];
        
        NSLog(@"xiaohua is pig!");
        
    }
    return self;
}
- (void)AddUI{
    __weak typeof(self)weakSelf = self;
    [self addSubview:self.backlable];
    [self.backlable mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.mas_equalTo(weakSelf).offset(15);
        make.left.mas_equalTo(weakSelf.mas_left);
        make.right.mas_equalTo(weakSelf.mas_right);
        make.height.mas_equalTo(88);
    }];
    
    [self addSubview:self.nameText];
    [self.nameText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_backlable);
        make.left.equalTo(weakSelf.mas_left).equalTo(@15);
        make.right.equalTo(weakSelf.mas_right).equalTo(@-15);
        make.height.equalTo(@44);
        
    }];
    
    [self addSubview:self.lineLable];
    [self.lineLable mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(_nameText.mas_bottom);
        make.height.equalTo(@1);
        make.left.equalTo(weakSelf.mas_left).equalTo(@15);
        make.right.equalTo(weakSelf.mas_right).equalTo(@-15);
    }];

    
    [self addSubview:self.passText];
    [self.passText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.lineLable.mas_bottom);
        make.left.equalTo(weakSelf.mas_left).equalTo(15);
        make.right.equalTo(weakSelf.mas_right).equalTo(@-15);
        make.height.equalTo(@44);
        
    }];
 
    
    [self addSubview:self.loginBtn];
    [self.loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_backlable.mas_bottom).equalTo(15);
        make.left.equalTo(weakSelf.mas_left).offset(16);
        make.right.equalTo(weakSelf.mas_right).offset(-16);
        make.height.equalTo(@35);
        
    }];
    
    
    
    [self addSubview:self.registBtn];
    [self.registBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo (_loginBtn.mas_bottom).equalTo(@17);
        make.right.equalTo(weakSelf.mas_right).equalTo(@-16);
        make.size.mas_equalTo(CGSizeMake(100, 25));
        
    }];


}


- (UILabel *)backlable{
    if (!_backlable) {
        _backlable = [[UILabel alloc]init];
        _backlable.backgroundColor = [UIColor whiteColor];
    }
    return _backlable;
}
- (UITextField *)nameText{
    if (!_nameText) {
        _nameText = [[UITextField alloc]init];
        _nameText.delegate = self;
        _nameText.placeholder = @"请输入手机号码";
    }
    return _nameText;
}
- (UITextField *)passText{
    if (!_passText) {
        _passText = [[UITextField alloc]init];
        _passText.delegate = self;
        _passText.placeholder = @"请输入密码";
    }
    return _passText;
}
- (UILabel *)lineLable{
    if (!_lineLable) {
        _lineLable = [[UILabel alloc]init];
        _lineLable.backgroundColor  = [UIColor grayColor];
        _lineLable.alpha = 0.2;
    }
    return _lineLable;

}
- (UIButton *)loginBtn{
    if (!_loginBtn) {
        _loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_loginBtn  setTitle:@"登录" forState:UIControlStateNormal];
        [_loginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _loginBtn.layer.masksToBounds = YES;
        _loginBtn.layer.cornerRadius = 5;
        _loginBtn.backgroundColor = RGB(30, 179, 231, 1.0);
    }
    return _loginBtn;

}
-(UIButton *)registBtn{
    if (!_registBtn) {
        _registBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_registBtn setTitle:@"免费注册" forState:UIControlStateNormal];
        [_registBtn setTitleColor:RGB(73, 176, 233, 1.0) forState:UIControlStateNormal];
//        _registBtn.backgroundColor = RGB(65, 179, 241, 1.0);
        
    }
    return _registBtn;

}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
