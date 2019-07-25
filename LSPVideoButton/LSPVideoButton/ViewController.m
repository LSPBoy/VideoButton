//
//  ViewController.m
//  LSPVideoButton
//
//  Created by zhudou on 2019/7/25.
//  Copyright © 2019年 lsp. All rights reserved.
//

#import "ViewController.h"
#import "VideoButtonView.h"

@interface ViewController ()<VideoButtonDelegate>

@property (nonatomic, strong)VideoButtonView *videoView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    self.videoView = [[VideoButtonView alloc] initWithOriginY:100];
    self.videoView.center = self.view.center;
    self.videoView.delegate = self;
    [self.view addSubview:self.videoView];
}

- (void)videoBegin{
    NSLog(@"开始");
}
- (void)videoEndWithTime:(NSInteger)time{
    NSLog(@"结束，时长%ld",(long)time);
}


@end
