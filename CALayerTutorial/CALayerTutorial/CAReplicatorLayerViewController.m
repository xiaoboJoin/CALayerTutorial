//
//  CAReplicatorLayerViewController.m
//  CALayerTutorial
//
//  Created by iXiaobo on 15/5/4.
//  Copyright (c) 2015年 iXiaobo. All rights reserved.
//

#import "CAReplicatorLayerViewController.h"

@interface CAReplicatorLayerViewController ()

@end

@implementation CAReplicatorLayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CAReplicatorLayer *replicatorLayer = [CAReplicatorLayer layer];
    replicatorLayer.frame = CGRectMake(100, 100, 200, 200);
    
    replicatorLayer.instanceCount = 30;
    replicatorLayer.instanceDelay = 1/30.0;
    replicatorLayer.preservesDepth = false;
    replicatorLayer.instanceColor = [UIColor yellowColor].CGColor;
    
    replicatorLayer.instanceRedOffset = 0.0;
    replicatorLayer.instanceGreenOffset = -0.5;
    replicatorLayer.instanceBlueOffset = -0.5;
    replicatorLayer.instanceAlphaOffset = 0.0;
    
    float angle = (M_PI * 2.0) / 30;
    replicatorLayer.instanceTransform = CATransform3DMakeRotation(angle, 0.0, 0.0, 1.0);
    [self.view.layer addSublayer:replicatorLayer];
    
    
    CALayer *instanceLayer = [CALayer layer];
    CGFloat layerWidth = 10.0;
    float midX = CGRectGetMidX(replicatorLayer.bounds) - layerWidth / 2.0;
    instanceLayer.frame =CGRectMake(midX, 0.0, layerWidth, layerWidth*3);
    instanceLayer.backgroundColor = [UIColor whiteColor].CGColor;
    [replicatorLayer addSublayer:instanceLayer];
    
    CABasicAnimation *fadeAnimation = [CABasicAnimation animation];
    fadeAnimation.keyPath = @"opacity";
    fadeAnimation.fromValue = [NSNumber numberWithFloat:1.0];
    fadeAnimation.toValue = [NSNumber numberWithFloat:1.0];
    fadeAnimation.duration = 1;
    fadeAnimation.repeatCount = 10000000;
    
    // 7
    instanceLayer.opacity = 0.0;
    [instanceLayer addAnimation:fadeAnimation forKey:@"FadeAnimation"];
    // Do any additional setup after loading the view.
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
