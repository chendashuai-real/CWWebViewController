//
//  ViewController.m
//  CWWebViewController
//
//  Created by 深圳策维科技有限公司 on 2017/9/13.
//  Copyright © 2017年 陈伟. All rights reserved.
//

#import "ViewController.h"
#import "CWWebViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CWWebViewController *web = [[CWWebViewController alloc]init];
    // 隐藏导航条 注意隐藏导航条要在 appDelegate.m 中发送一个通知 SHOW_NAVBAR_NOTIFI, 以防在程序进入前台时导航条没有显示
    web.isHideNavigationBar = YES;
    
    // 是否刷新
    web.canRefresh = YES;
    
    // 是否可以复制
    web.canCopy = YES;
    
    // 1. 传 cookie
    web.cookieValue = [NSString stringWithFormat:@"%@=%@",@"testWKcookie", @"testWKcookievalue"];
    // WKUserScript 的 source 字符串
    web.sourceStr = [NSString stringWithFormat:@"document.cookie ='token=%@';document.cookie = 'os=ios';",@"你的token"];
    web.url = @"你的 url";
    [self.navigationController pushViewController:web animated:YES];
    
    
    // 2. 使用 UIWebView 做 cookie 请求 要调用 setCookie的方法
    //[web setCookieWithName:<#(NSString *)#> cookieValue:<#(NSString *)#> cookieDomain:<#(NSString *)#> cookieCommentURL:<#(NSString *)#> cookiePort:<#(NSString *)#>];
    
    
    
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
