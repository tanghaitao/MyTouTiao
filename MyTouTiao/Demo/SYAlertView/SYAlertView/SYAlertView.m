//
//  SYAlertView.m
//  zhangshaoyu
//
//  Created by zhangshaoyu on 2018/6/4.
//  Copyright © 2018年 VSTECS. All rights reserved.
//

#import "SYAlertView.h"

static CGFloat const heightSpace = 10.0f;
static NSTimeInterval const timeAnimation = 0.4f;

@interface SYAlertView () <UIGestureRecognizerDelegate>

@property (nonatomic, assign) CGFloat originYInitialize; // 初始化UI时的原点位置，便于结束编辑时恢复位置
@property (nonatomic, assign) CGSize sizeKeyboard;
@property (nonatomic, weak) UIView *editingView;

@end

@implementation SYAlertView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setUI];
        if (self.superview == nil) {
            UIWindow *view = [[UIApplication sharedApplication] keyWindow];
            self.frame = view.bounds;
            [view addSubview:self];
        }
    }
    return self;
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    self.editingView = nil;
    
    NSLog(@"释放了 %@", [self class]);
}

#pragma mark - 视图

- (void)setUI
{
    // 初始化默认值
    self.isAnimation = NO;
    //
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    animation.duration = timeAnimation;
    NSMutableArray *values = [NSMutableArray array];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.1, 0.1, 1.0)]];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(1.2, 1.2, 1.0)]];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.9, 0.9, 1.0)]];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(1.0, 1.0, 1.0)]];
    animation.values = values;
    self.animation = animation;    
    //
    self.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.47];
    self.hidden = YES;
    
    UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapClick)];
    tapRecognizer.delegate = self;
    [self addGestureRecognizer:tapRecognizer];
    
    [self addSubview:self.containerView];
    
    __weak typeof(self) weakSelf = self;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        __strong typeof(self) strongSelf = weakSelf;
        //
        [[NSNotificationCenter defaultCenter] addObserver:strongSelf selector:@selector(keyboardShow:) name:UIKeyboardWillShowNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:strongSelf selector:@selector(keyboardHide:) name:UIKeyboardWillHideNotification object:nil];
        //
        [[NSNotificationCenter defaultCenter] addObserver:strongSelf selector:@selector(editviewBeginEdit:) name:UITextFieldTextDidBeginEditingNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:strongSelf selector:@selector(editviewEndEdit:) name:UITextFieldTextDidEndEditingNotification object:nil];
        //
        [[NSNotificationCenter defaultCenter] addObserver:strongSelf selector:@selector(editviewBeginEdit:) name:UITextViewTextDidBeginEditingNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:strongSelf selector:@selector(editviewEndEdit:) name:UITextViewTextDidEndEditingNotification object:nil];
    });
}

#pragma mark - 方法

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
    UIView *touchview = touch.view;
    if ([touchview isEqual:self]) {
        return YES;
    }
    return NO;
}

- (void)tapClick
{
    [self endEditing:YES];
}

- (void)hide
{
    if (self.hidden) {
        
    } else {
        self.hidden = YES;
    }
    [self.containerView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
}

- (void)show
{
    if (self.containerView.subviews.count <= 0) {
#if DEBUG
        NSLog(@"\n<------\n没有设置containerView的frame及添加子视图，或是没有设置属性showContainerView\n------>\n");
#endif
        return;
    }
    
    self.hidden = NO;
    if (self.isAnimation) {
        [self.containerView.layer addAnimation:self.animation forKey:nil];
    }
}

#pragma mark - 通知

#pragma mark 键盘处理

- (NSArray *)editSuperviews:(UIView *)edit base:(UIView *)baseview
{
    NSMutableArray *array = [NSMutableArray new];
    UIView *superview = edit.superview;
    while (superview) {
        if ([superview isEqual:baseview]) {
            superview = nil;
        } else {
            [array addObject:superview];
            superview = superview.superview;
        }
    }
    return array;
}

- (void)editViewFrame
{
    // 重置编辑窗口位置
    // 当前编辑视图的所有父视图
    NSArray *superviews = [self editSuperviews:self.editingView base:self.containerView];
//    NSLog(@"superviews = %@", superviews);
    CGFloat __block originY = self.editingView.frame.origin.y;
    [superviews enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        originY += ((UIView *)obj).frame.origin.y;
    }];
    
    CGFloat height = (self.containerView.superview.frame.size.height - self.sizeKeyboard.height);
    CGFloat heightShow = (self.containerView.frame.origin.y + originY + self.editingView.frame.size.height);
    CGFloat space = (self.originSpace <= 0.0 ? heightSpace : self.originSpace);
    BOOL shouldChange = (height < (heightShow + space) ? YES : NO);
    BOOL shouldChangeWhileInitialize = (height < (self.originYInitialize + originY + self.editingView.frame.size.height + space) ? YES : NO);
    if (shouldChange || shouldChangeWhileInitialize) {
        CGRect __block rect = self.containerView.frame;
        if (self.isAnimation) {
            [UIView animateWithDuration:0.3 animations:^{
                rect.origin.y = (self.containerView.superview.frame.size.height - self.sizeKeyboard.height - space - originY - self.editingView.frame.size.height);
                // rect.origin.y = 10.0;
                self.containerView.frame = rect;
            }];
        } else {
            rect.origin.y = (self.containerView.superview.frame.size.height - self.sizeKeyboard.height - space - originY - self.editingView.frame.size.height);
            // rect.origin.y = 10.0;
            self.containerView.frame = rect;
        }
    }
}

- (void)keyboardShow:(NSNotification *)notification
{
    // 键盘高度
    NSDictionary *keyboardDict = [notification userInfo];
    self.sizeKeyboard = [[keyboardDict objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].size;

    if (!CGSizeEqualToSize(self.sizeKeyboard, CGSizeZero)) {
        // 重置编辑视图位置
        [self editViewFrame];
    }
}

- (void)keyboardHide:(NSNotification *)notification
{
    CGRect __block rect = self.containerView.frame;
    if (self.isAnimation) {
        [UIView animateWithDuration:0.3 animations:^{
            rect.origin.y = self.originYInitialize;
            self.containerView.frame = rect;
        }];
    } else {
        rect.origin.y = self.originYInitialize;
        self.containerView.frame = rect;
    }

    self.sizeKeyboard = CGSizeZero;
    self.originYInitialize = 0.0;
}

#pragma mark 编辑

- (void)editviewBeginEdit:(NSNotification *)notification
{
    self.editingView = notification.object;
    if (([self.editingView isKindOfClass:[UITextView class]] || [self.editingView isKindOfClass:[UITextField class]]) && self.originYInitialize == 0.0f) {
        self.originYInitialize = self.containerView.frame.origin.y;
    }
    
    if (!CGSizeEqualToSize(self.sizeKeyboard, CGSizeZero)) {
        // 重置编辑视图位置
        [self editViewFrame];
    }
}

- (void)editviewEndEdit:(NSNotification *)notification
{
    self.editingView = nil;
}

#pragma mark - setter

- (void)setShowContainerView:(UIView *)showContainerView
{
    _showContainerView = showContainerView;
    if (_showContainerView) {
        self.containerView.frame = CGRectMake((self.frame.size.width - _showContainerView.frame.size.width) / 2, (self.frame.size.height - _showContainerView.frame.size.height) / 2, _showContainerView.frame.size.width, _showContainerView.frame.size.height);
        [self.containerView addSubview:_showContainerView];
    }
}

#pragma mark - getter

- (UIView *)containerView
{
    if (_containerView == nil) {
        _containerView = [[UIView alloc] init];
        _containerView.backgroundColor = [UIColor clearColor];
    }
    return _containerView;
}

@end
