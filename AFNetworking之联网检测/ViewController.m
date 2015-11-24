//
//  ViewController.m
//  AFNetworking之联网检测
//
//  Created by 陈高健 on 15/11/24.
//  Copyright © 2015年 陈高健. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

//点击屏幕的时候开始检测
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    /** 联网检测对应状态
     AFNetworkReachabilityStatusUnknown          = -1,  //不知道
     AFNetworkReachabilityStatusNotReachable     = 0, //不能联网
     AFNetworkReachabilityStatusReachableViaWWAN = 1, //流量
     AFNetworkReachabilityStatusReachableViaWiFi = 2, //wifi
    */

    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        NSLog(@"%ld",status);
    }];
    
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
