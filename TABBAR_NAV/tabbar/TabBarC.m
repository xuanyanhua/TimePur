//
//  TabBarC.m
//  TABBAR_NAV
//
//  Created by xuan on 16/6/16.
//  Copyright © 2016年 xyh. All rights reserved.
//

#import "TabBarC.h"
#import "NavVC.h"

@interface TabBarC ()
@property (nonatomic, strong) NSArray       *data_arry;

@end

@implementation TabBarC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self readPath];
   

}
- (NSArray *)data_arry{

    if (!_data_arry) {
        
        _data_arry = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"TabBar_Model" ofType:@"plist"]];
    }
    return _data_arry;
}
- (void)readPath{
    NSMutableArray   *marry = [[NSMutableArray alloc]initWithCapacity:self.data_arry.count];
   [self.data_arry enumerateObjectsUsingBlock:^(NSDictionary  *dic, NSUInteger idx, BOOL * _Nonnull stop) {
       
       Class viewControllerClass = NSClassFromString(dic[@"ViewController"]);
       UIViewController *viewController = [[viewControllerClass alloc]init];
       viewController.title = dic[@"Title"];
       
       viewController.tabBarItem.image = [[UIImage imageNamed:dic[@"NorImage"]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
       
       viewController.tabBarItem.selectedImage = [[UIImage imageNamed:dic[@"SelectImage"]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
       
       
       
       NavVC *navController = [[NavVC alloc]initWithRootViewController:viewController];
       [marry addObject:navController];
       
   }];
    
    
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{
                                                        
                                                        NSFontAttributeName:[UIFont systemFontOfSize:10],NSForegroundColorAttributeName:[UIColor grayColor]
                
                                                        } forState:UIControlStateNormal];
    
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{
                                                        NSFontAttributeName:[UIFont fontWithName:@"HelveticaNeue-Bold" size:10.0],NSForegroundColorAttributeName:RGB(65, 179, 241, 1.0)}
                                                    forState:UIControlStateSelected];


    self.viewControllers = marry;
    self.selectedIndex = 0;

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
