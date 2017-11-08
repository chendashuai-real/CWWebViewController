//
//  ViewController.m
//  CWWebViewController
//
//  Created by 深圳策维科技有限公司 on 2017/9/13.
//  Copyright © 2017年 陈伟. All rights reserved.
//

#import "ViewController.h"
#import "CWWebViewController.h"
#import "WebViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    WebViewController *web = [[WebViewController alloc]init];
    // 隐藏导航条 注意隐藏导航条要在 appDelegate.m 中发送一个通知 SHOW_NAVBAR_NOTIFI, 以防在程序进入前台时导航条没有显示
    web.isHideNavigationBar = YES;
    
//    // 是否刷新
//    web.canRefresh = YES;
//    
//    // 是否可以复制
//    web.canCopy = YES;
//    
//    // 1. 传 cookie
//    web.cookieValue = [NSString stringWithFormat:@"%@=%@",@"testWKcookie", @"testWKcookievalue"];
//    // WKUserScript 的 source 字符串
//    web.sourceStr = [NSString stringWithFormat:@"document.cookie ='token=%@';document.cookie = 'os=ios';",@"你的token"];
    web.url = @"http://testwx-iacloud.ceway.com.cn/app-xproject-test/#/projectDetails?projectId=1de346efea1943d2b9d9942c171821b7&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjp7InJlYWxOYW1lIjoi6YKx5YGlIiwibG9naW5OYW1lIjoiQ1c1MDk1IiwidXNlcklkIjo2MjAzMTR9LCJzdWIiOiIxNTA1NTI4MjU3MzI3IiwiaXNzIjoiY2V3YXkxMDAwIiwiYXVkIjoiVkpQWFVIVXF5MENVNEdWMGdjenFFakRCTlNTZFpXZlJpdEJkQ0pqaGNVVTBlcUdTNU5nYTBDSHFEZDFrUE9JWiJ9.CJ9oY-JCWJ2wLNJgIu5WNpP7WzdiA-SuIDbWYG6Zq64";
    
    
    [self.navigationController pushViewController:web animated:YES];
    
    
    // 2. 使用 UIWebView 做 cookie 请求 要调用 setCookie的方法
    //[web setCookieWithName:<#(NSString *)#> cookieValue:<#(NSString *)#> cookieDomain:<#(NSString *)#> cookieCommentURL:<#(NSString *)#> cookiePort:<#(NSString *)#>];
    
    
    
    
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
