//
//  JWTHomeViewController.m
//  shoppingcentre
//
//  Created by Wondergirl on 16/9/20.
//  Copyright © 2016年 🌹Wondergirl😄. All rights reserved.
//

#import "JWTHomeViewController.h"
#import "AppDelegate.h"

@interface JWTHomeViewController()


@end
@implementation JWTHomeViewController
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    //[self.navigationController setNavigationBarHidden:YES animated:YES];//隐藏
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"商城";
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor magentaColor], NSForegroundColorAttributeName, nil]];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.view.backgroundColor = [UIColor whiteColor];
    
    /**
     * 抽屉按钮
     */
    UIBarButtonItem * leftSliderBar = [[UIBarButtonItem alloc]initWithImage:[[UIImage imageNamed:@"topbar_menu_normal"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStyleDone target:self action:@selector(leftSliderClick)];
    self.navigationItem.leftBarButtonItem = leftSliderBar;
  
}

#pragma mark- 点击打开抽屉
/**
 *  点击打开抽屉
 */
-(void)leftSliderClick
{
    // 通过app 回到主Window用来显示抽屉的VC
    AppDelegate * appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    // 由关闭状态打开抽屉
    if (appDelegate.leftSlideVC.closed)
    {
        [appDelegate.leftSlideVC openLeftView];
    }
    //关闭抽屉
    else
    {
        [appDelegate.leftSlideVC closeLeftView];
    }
}


@end
