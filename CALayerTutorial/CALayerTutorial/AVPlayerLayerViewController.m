//
//  AVPlayerLayerViewController.m
//  CALayerTutorial
//
//  Created by iXiaobo on 15/5/4.
//  Copyright (c) 2015年 iXiaobo. All rights reserved.
//

#import "AVPlayerLayerViewController.h"
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVPlayerLayer.h>

@interface AVPlayerLayerViewController ()
{
    
    AVPlayer *player;
    AVPlayerLayer *playerLayer;
}

@end

@implementation AVPlayerLayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupAVPlayerLayer];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupAVPlayerLayer
{
    playerLayer = [AVPlayerLayer layer];
    playerLayer.frame = CGRectMake(100, 100, 200, 200);
    
   // NSString *urlStr = [[NSBundle mainBundle] pathForResource:@"colorful" ofType:@"m4v"];
    player = [[AVPlayer alloc] initWithURL:[NSURL fileURLWithPath:@"https://youtu.be/JGsOHvoSAH0"]];
    
    player.actionAtItemEnd = AVPlayerActionAtItemEndNone;
    playerLayer.player = player;
    [self.view.layer addSublayer:playerLayer];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didEnd:) name:@"AVPlayerItemDidPlayToEndTimeNotification" object:player.currentItem];
    
}
- (IBAction)play:(UIButton *)sender {
    if ([sender.titleLabel.text  isEqual: @"play"]) {
        [player play];
        [sender setTitle:@"pause" forState:UIControlStateNormal];
    }
    else
    {
        [player pause];
        [sender setTitle:@"play" forState:UIControlStateNormal];
    }
    
}

- (void)didEnd:(NSNotification *)notification
{
    
    
    AVPlayerItem *item = notification.object;
    [item seekToTime:kCMTimeZero];
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
