//
//  VideoButtonView.h
//  LSPVideoButton
//
//  Created by zhudou on 2019/7/25.
//  Copyright © 2019年 lsp. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol VideoButtonDelegate <NSObject>

@optional

//录制开始
-(void)videoBegin;

//录制结束
- (void)videoEndWithTime:(NSInteger)time;

//返回
- (void)returnButtonClicked;

//配乐
- (void)addMusicButtonClicked;

//确认
- (void)confirmButtonClicked;


@end

@interface VideoButtonView : UIView


@property (nonatomic ,weak)id <VideoButtonDelegate>delegate;

- (instancetype)initWithOriginY:(CGFloat)originY;

@end

NS_ASSUME_NONNULL_END
