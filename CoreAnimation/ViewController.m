//
//  ViewController.m
//  CoreAnimation
//
//  Created by liuming on 2017/5/3.
//  Copyright © 2017年 burning. All rights reserved.
//

#import "ViewController.h"
#import "QYMusicPlayAnimation.h"
#import "QYWaterView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    QYMusicPlayAnimation * animationView = [[QYMusicPlayAnimation alloc] initWithFrame:CGRectMake(10, 30, 320, 100)];
    [self.view addSubview:animationView];
    animationView.duration = 0.5;
    animationView.instanceDelay = 0.15;
     [animationView startAnimation];
    
    QYWaterView * waterView = [[QYWaterView alloc] initWithFrame:CGRectMake(10, 140, 200, 200)];
    waterView.animationTime = 5.0f;
    waterView.instanceCount = 8.0f;
    [self.view addSubview:waterView];
    
    [waterView startAnimation];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
