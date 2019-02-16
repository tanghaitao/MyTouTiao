1-1 课程导学
深入ios底层技术机制，原理
完善ios技术知识体系
中级 ：ui视图 oc语言 runtime 内存，block,多线程，runloop，网络，
高级：设计模式 架构／框架 算法 第三方使用
ui视图：
uitableview 重用机制理解 运用 数据源多线程操作同步问题
事件传递，视图响应
图像显示原理 控件是如何转换为相素点的 理解ui卡顿 掉帧原因
ui绘制原理／异步绘制
离屏渲染

oc语言
分类 实现机制 原理
关联对象 分类添加变量
扩展 代理
kvo,kvc 系统实现原理机制 设计模式
nsnotification 机制实现原理
属情关键字

runtime
对象，类对象，元类对象分别是什么
消息传递机制是怎样的
消息转发流程是怎样的
方法缓存机制是怎样运行的
method-swizzling runtime的技术实际应用
动态添加方法

内存管理
arc
mrc
引用计数机制
弱引用表
autoreleasepool
循环引用

block
block的本质
截获变量特性
__block修饰的本质
block的内存管理
循环引用

多线程
gcd
nsoperation/nsoperationqueue
nsthread
线程同步，资源共享问题
三种技术怎么解决线程同步，资源共享问题，几种线程有什么特点，区别
互斥锁，自旋锁，递归锁

runloop
什么是runloop
mode/source /timer/observer
事件循环机制是怎样的
runloop与nstimer的关系
runloop与线程之间的关系
如何实现一个常驻线程

网络
http协议 get post区别
https与网络安全 建立链接的流程
tcp/udp 三次握手 四次挥手
dns解析
session/cookie

设计模式
六大设计原则
责任链
桥接
适配器
单例
命令

架构／框架
图片缓存框架
时长统计框架
复杂页面架构
客户端整体架构

算法
字符串反转
链表反转
有序数组合并
hash算法
查找两个子视图的共同父视图
求无序数组当中的中位数

第三库
afnetworking
sdwebimageview
reactive cocoa
asyncdisplaykit

2-1 各大公司初中高IOS工程师岗位技能要求
初级工程师 
会用 精通oc语言基础 正确使用oc分类扩展kvo kvc
uikit cocoa framework 自定义ui控件
网络通信机制，常用数据传输协议的理解 http https 对称加密 非对称 json xml
主流开源框架使用经验 afnetworking 图片异步下载 使用心得
中级工程师
为什么要这样用
编程基础，数据结构，算法解决实际问题
深入理解oc语言机制 runtime 内存管理要求 网络多线程 图形用户ui
常用设计模式，框架，架构
良好分析解决问题能力 最好的学习对象就是源码，深入了解解决问题思路 逻辑
高级工程师
创造性解决开发中关键问题和技术难题
设备流量，性能，电量等调优如外卖 今日头条，视频滑动流畅性
较强的软件设计能力 对超级复杂页面架构设计
ios内部原理有深刻了解
资深工程师
精通高性能编程，性能调优 在前期设计会考虑架构的问题 如字符串大量遍历，选技较优算法
灵活运用数据结构，算法解决复杂程序设计问题
提供性能优化，日志搜集，统计分析方案
架构，模块设计

2-2 如何编写一份让HR或面试官眼前一亮的简历？
遵从：简洁性，真实性，全面性
简洁性：排版清晰，亮点，优势 5年以上的简历不要超过三页，挑选重要突出表达，无关的不需要表达
真实性：可以包装，但不能作假 量化指标去说明问题 如项目表达闪退量的变化，开发前和开发后crash量小于多少，线上bug数变化，开发成本节约了多少，一定有一个量去定论
不要用pv,uv去说，这是用于产品方面的
全面性：个人基本信息邮箱，联系方式很重要，履历过公司要全面，尽量有一个十分亮点的体现
简历四要素：
基本信息 姓名 现居住地 学历 工作年限 专业 邮箱用hotmail gmail比较好 电话 有头像也不错
工作经历 在哪个时间段就职哪个公司什么职位 角色变化体现进步
项目经验 列举比较有亮点的2-3个项目，在项目中承担的角色 是主导 参与 核心研发者
擅长技能 项目背景，方案，效果 了解背景交待 技术方案 效果是方案的验证

主导／参与／核心参与xxx项目
背景 改善原有代码，不易维护，需求快速迭代
方案，合理运用桥接，命令设计模式，对原有业务进行分层，解耦，降低代码重合度
效果 体现出简历全面性 重构前崩溃量 重构后崩溃 重构后清除多少行代码

擅长技能
尽可能突出亮点重点
擅长feed流性能优化，性能优化
是精通，掌握，精通，了解， 中高级要写精通
能通过多线程，runtime机制解决一些难点问题
还有对其它语言，也实事求事，熟悉，精通。
简历是一块敲门砖


3-1 UITableView 相关面试问题
UITableView的重用机制和原理是什么样的
引出事件传递&视图响应的机制和流程
图像显示原理，更好的理解ui卡顿和掉帧的原因
绘制原理&异步绘制，异步绘制是解决ui滑动性能的技术解决方案，什么是离屏渲染，为什么要规避离屏渲染

UITableView 相关
重用机制
cell = [tableview dequeuereusablecellwithidentifer:identifer];

A1  所有在屏外  
A2 一部份显示在屏幕中
A3  所有在屏内
A4  所有在屏内
A5  所有在屏内
A6 一部份显示在屏幕中
A7 所有在屏外
多线程下，数据源同步问题
在继续滑动的情况下，a1是所有都在屏幕外的，会放入到重用池中，当a7要进入屏幕显示的时候
会从重用池中跟据identifer拿内存复用，如果a1，a7都是同一个标识符，a7就可以在重用池中用
a1的内存

下面通过自定义ui控件，字母索引条，来体现在ui重用机制


ViewReusePool 类，代表视图的重用池

ViewReusePool.h
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
// 实现重用机制的类
@interface ViewReusePool : NSObject

// 从重用池当中取出一个可重用的view
- (UIView *)dequeueReusableView;

// 向重用池当中添加一个视图
- (void)addUsingView:(UIView *)view;

// 重置方法，将当前使用中的视图移动到可重用队列当中
- (void)reset;

@end

ViewReusePool.m

#import "ViewReusePool.h"

@interface ViewReusePool ()//创建了一个扩展，在里面添加了两个变量
// 等待使用的队列，集合实现
@property (nonatomic, strong) NSMutableSet *waitUsedQueue;
// 使用中的队列，集合实现
@property (nonatomic, strong) NSMutableSet *usingQueue;
@end

@implementation ViewReusePool
//创建两个对列的内存
- (id)init{
    self = [super init];
    if (self) {
        _waitUsedQueue = [NSMutableSet set];
        _usingQueue = [NSMutableSet set];
    }
    return self;
}

- (UIView *)dequeueReusableView{
    UIView *view = [_waitUsedQueue anyObject];//从等待的对列当中随机取出一个对象
    if (view == nil) {//如果没有，返回view
        return nil;
    }
    else{
        // 进行队列移动
        [_waitUsedQueue removeObject:view];//如果有，则把这个view从这个等待队列移掉
        [_usingQueue addObject:view];//添加到正在使用的队列中
        return view;//返回这个视图的内存
    }
}

- (void)addUsingView:(UIView *)view
{
    if (view == nil) {//如果是空的，直接返回
        return;
    }
    
    // 如果有则添加视图到使用中的队列
    [_usingQueue addObject:view];
}

- (void)reset{
    UIView *view = nil;
    while ((view = [_usingQueue anyObject])) {//遍列使用队列中的所有视图，如果有
        // 从使用中队列移除
        [_usingQueue removeObject:view];
        // 加入等待使用的队列
        [_waitUsedQueue addObject:view];
    }
}

@end



IndexedTableView类，是uitableview的子类，实现了带索引条的类

IndexedTableView.h

#import <UIKit/UIKit.h>


@protocol IndexedTableViewDataSource <NSObject>//定义了一个索引条的数据源协议

// 获取一个tableview的字母索引条数据的方法，为字母条提供显示哪些字母
- (NSArray <NSString *> *)indexTitlesForIndexTableView:(UITableView *)tableView;

@end

@interface IndexedTableView : UITableView
@property (nonatomic, weak) id <IndexedTableViewDataSource> indexedDataSource;//定义一个weak属性关建字的数据源
@end



IndexedTableView.m
//
//  IndexedTableView.m
//  IndexedBar
//
//  Created by yangyang38 on 2018/2/14.
//  Copyright © 2018年 yangyang. All rights reserved.
//

#import "IndexedTableView.h"
#import "ViewReusePool.h"
@interface IndexedTableView ()//在扩展当中定义了两个成员变量
{
    UIView *containerView;//容器view，用来装载所有字母的控件
    ViewReusePool *reusePool;//声明字母重用池
}
@end

@implementation IndexedTableView

- (void)reloadData{//重写reloaddata方法，在其中实现字母条的重用
    [super reloadData];
    
    // 懒加载，创建容器的view，指定它的背景色为白色
    if (containerView == nil) {
        containerView = [[UIView alloc] initWithFrame:CGRectZero];
        containerView.backgroundColor = [UIColor whiteColor];
        
        //把字母索引条容器插入当前视图的最上边，避免索引条随着table滚动，不写这句话，字母索引条会随着uitableview滚动而滚动
        
        [self.superview insertSubview:containerView aboveSubview:self];
    }
    
    if (reusePool == nil) {//懒加载去创建重用池
        reusePool = [[ViewReusePool alloc] init];
    }
    
    // 标记所有视图为可重用状态，就是把正在重用队列中的所有视图移除掉，添加到等待重用队列中
    [reusePool reset];
    
    // reload字母索引条
    [self reloadIndexedBar];
}

- (void)reloadIndexedBar
{
    // 获取字母索引条的显示内容
    NSArray <NSString *> *arrayTitles = nil;//用来表达字母索引条中的所有字母
    if ([self.indexedDataSource respondsToSelector:@selector(indexTitlesForIndexTableView:)]) {//判断是否响应这个数据源方法
        arrayTitles = [self.indexedDataSource indexTitlesForIndexTableView:self];//响应则实现它的代理，通过数据源提供方获取这个数据源的数组
    }
    
    // 判断字母索引条是否为空
    if (!arrayTitles || arrayTitles.count <= 0) {//如果说获取到的数据源为空
        [containerView setHidden:YES];//没有数据源，设计容器隐藏
        return;
    }
    
    NSUInteger count = arrayTitles.count;//如果有数据
    CGFloat buttonWidth = 60;
    CGFloat buttonHeight = self.frame.size.height / count;//平分tableview获取高度
    
    for (int i = 0; i < [arrayTitles count]; i++) {
        NSString *title = [arrayTitles objectAtIndex:i];//取现每个字母
        
        // 从重用池当中取一个Button出来
        UIButton *button = (UIButton *)[reusePool dequeueReusableView];//取出一个等待重用池中的视图
        // 如果没有可重用的Button重新创建一个
        if (button == nil) {
            button = [[UIButton alloc] initWithFrame:CGRectZero];
            button.backgroundColor = [UIColor whiteColor];
            
            // 注册button到使用中的重用池当中
            [reusePool addUsingView:button];
            NSLog(@"新创建一个Button");
        }
        else{
            NSLog(@"Button 重用了");
        }
        
        // 添加button到父视图控件
        [containerView addSubview:button];
        [button setTitle:title forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
        // 设置button的坐标
        [button setFrame:CGRectMake(0, i * buttonHeight, buttonWidth, buttonHeight)];
    }
    
    [containerView setHidden:NO];//设置隐藏属性为no
    containerView.frame = CGRectMake(self.frame.origin.x + self.frame.size.width - buttonWidth, self.frame.origin.y, buttonWidth, self.frame.size.height);
}


@end


 
ViewController类，中使用字母索引条类

ViewController.h 
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@end

ViewController.m


#import "ViewController.h"
#import "IndexedTableView.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate,IndexedTableViewDataSource>//自定义的数据源IndexedTableViewDataSource
{
    IndexedTableView *tableView;//带有索引条的tableview
    UIButton *button;//点击一下button来reloadload看看在这个自定义字母索引的流程
    NSMutableArray *dataSource;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建一个Tableview
    tableView = [[IndexedTableView alloc] initWithFrame:CGRectMake(0, 60, self.view.frame.size.width, self.view.frame.size.height - 60) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    
    // 设置table的索引数据源
    tableView.indexedDataSource = self;
    
    [self.view addSubview:tableView];
    
    //创建一个按钮
    button = [[UIButton alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 40)];
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"reloadTable" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(doAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    // 数据源，1到99的数据
    dataSource = [NSMutableArray array];
    for (int i = 0; i < 100; i++) {
        [dataSource addObject:@(i+1)];
    }
    // Do any additional setup after loading the view, typically from a nib.
    
}

#pragma mark IndexedTableViewDataSource

- (NSArray <NSString *> *)indexTitlesForIndexTableView:(UITableView *)tableView{
    
    //奇数次调用返回6个字母，偶数次调用返回11个，这里声名静态的bool值变量
    static BOOL change = NO;
    
    if (change) {
        change = NO;
        return @[@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K"];
    }
    else{
        change = YES;
        return @[@"A",@"B",@"C",@"D",@"E",@"F"];
    }
    
}

#pragma mark UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [dataSource count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"reuseId";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //如果重用池当中没有可重用的cell，那么创建一个cell
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    // 文案设置
    cell.textLabel.text = [[dataSource objectAtIndex:indexPath.row] stringValue];
    
    //返回一个cell
    return cell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40;
}

- (void)doAction:(id)sender{
    NSLog(@"reloadData");
    [tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end



3-2 UI数据源同步 相关面试问题

新闻，咨询类的app会涉及到数据源同步问题，如头条，微博

场景：
数据源列表a
对数据源列表a进行删除操作，因为是用户手动删除，所以发生在主线程
同时loadmore加载更多数据的操作也发生了，往往是在子线程当中后项刷新网络请求

这个场景就涉及到了多线程对数据源的访问，需要考虑数据源同步问题

两和方案
方案1：并发访问 ，持续拷贝
1。主线程作数据拷贝，拷贝的结果给子线程使用
2。子线程的工作是对新数据的网络请求，数据解析，预排版等内容
3。主线程删除一行数据，reloadui后数据就不见了，如果还有时间，主线程还会作一些其它的任务
4。子线程返回请求的结果，再重新reloadui
5。假设子线程使用的数据是主线程给的数据拷贝，那拷贝的数据是在主线程删除一行数据之前，也就是说子线程返回数据到主线程
仍然包含主线程删除之前的数据，此时会产生删除的那条数据仍然在显示
6。记录主线程之前删除的是哪一条数据，在子线程返回结果的时候再同步删除掉这条数据


方案2：串行访问

1。子线程，在进行网络请求和数据解析
2。子线程作完请求和数据解析后放入到串行对列，对这些数据进行排版
3。主线程此时要删除一行数据，把这个操作放到串行队列当中，等待子线程数据排版完成
后才会同步数据删除，再readui

方案1对内存的开销会有一定影响，方案2删除需要等子线程数据先排版，会有删除延时




3-3 UI事件传递&响应 相关面试问题

首先看一下uiview和calayer的关系

1。uiview包含layer,backgroundcolor两个属性,backgroundcolor是对calayer的属性方法的包装
2。layer包含calayer,calayer包含contents属性，contents决定了uiview的显示
3。contents对应的backing store其实是一个位图，最终显示到屏幕上面的控件都是位图

区别：
uiview
1。uiview为calayer提供显示的内容，如显示红色，白色
2。以及负责处理触摸等事件，参与响应链

calayer
只是负责显示内容，通过contents去显示内容

1。为什么uiview只负责提供显示内容，和响应链，calayer只负责显示
这是一个单一设计原则，体现了职责上的分工

1。事件传递与视图响应链的机制和流程

viewa
  |- viewb1
  |- viewb2
        |-viewc1
            |-viewd
        |-viewc2
        
当点击viewc2发生了什么？

事件传递的两个方法：
- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event

1.hitTest返回uiview，最终哪个视图响应事件，就把这个视图返回
2. pointInside判断某一个点击位置是否在视图范围内，如果在就会返回yes

事件传递的流程：
点击屏幕
  |(传递)
uiapplication
  |（传递）
uiwindow
  |(中会判断哪个视图最终响应)  
hitTest （返回最终响应点击事件的视图）
  | （hittest会调用pointinside）
pointInside（判断点击事件是否在uiwindow范围内）
  |  （如果点击事件在uiwindow范围内查找）
subviews（遍列查找子视图，找出最终响应视件的子视图）
      |遍列方式，是以倒序偏历查找的方式
           |最后添加到uiwindows上的视图最优先被遍历
               |在每个子uiview当中会再次调用hittest方法，uiview的子视图又会再调用hittest方法
                    |如果hittest方法返回的是有值的，则这个视图就作为最终点击响应的视图返回
                    
以上流程简要概括：
点击屏幕传递给uiapplication,传递给uiwindow，uiwindow根据hitest去返回最终响应的那个视图，
hitest方法会先调用pointinside方法判断是否点击事件在uiwindow范围内，如果在，则去遍列uiwindow的
subviews所有子视图，遍列是由最顶层先遍列的，每个遍列的子视图，都会调用hitest方法，如果这个子视图内还包含
了子子视图，则选从子子视图开始遍列，如果子子视图的hittest方法返回有值，则这个视图为最终点击响应的视图


hittest方法内部流程：
1。判断视图是否alpha大于0.0.1,是否ishidden,是否userinteraction可点（成立继续第二步，否则返回nil）
2。pointInside方法判断当前点击的点是否在视图范围内（成立继续第三步，否则返回nil）
3。for(int i=v.subviews.count-1;i>0;i--){ sv=v.subviews[i]}
4.sv再调用hittest，如果返回不为空，则返回这个视图sv，响应链结束，这个sv为最终响应的视图
5。如果第3步遍列的子视图的hittest方法返回nil，未找到响应视图，就会把第二步的视图返回

代码实战
一个方形的按钮里面有一个圆形的区域，只有点击圆形区域有响应事件，圆形区域外点击无响应

CustomButton类



CustomButton.h

#import <UIKit/UIKit.h>

@interface CustomButton : UIButton

@end







CustomButton.m

#import "CustomButton.h"

@implementation CustomButton

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    if (!self.userInteractionEnabled ||
        [self isHidden] ||
        self.alpha <= 0.01) {
        return nil;
    }//判断自身如果是隐藏，透明，不可点击，返回nil
    
    if ([self pointInside:point withEvent:event]) {//如果在点击是在范围类
        //NSEnumerationReverse倒序遍历当前对象的子视图，定义每个子视图为hit
        __block UIView *hit = nil;
        [self.subviews enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            // 当前点击的点转换一下坐标转换
            CGPoint vonvertPoint = [self convertPoint:point toView:obj];
            //调用子视图的hittest方法，返回不为空，则表明这个子视图接收了响应
            hit = [obj hitTest:vonvertPoint withEvent:event];
            // 如果找到了接受事件的对象，则停止遍历
            if (hit) {
                *stop = YES;//这里是停止遍历
            }
        }];
        
        if (hit) {
            return hit;
        }
        else{
            return self;
        }
    }
    else{
        return nil;
    }
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    //取出点击位置的横纵坐标
    CGFloat x1 = point.x;
    CGFloat y1 = point.y;
    //表示方形按钮的中心
    CGFloat x2 = self.frame.size.width / 2;
    CGFloat y2 = self.frame.size.height / 2;
    
    //计算当前点击的这个点距离方形中心的实际距离
    double dis = sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2));
    // 如果这个距离小于方形按钮半径，则在圆形范围内，返回yes
    if (dis <= self.frame.size.width / 2) {
        return YES;
    }
    else{
        return NO;
    }
}

@end


ViewController类

ViewController.h
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@end



ViewController.m
#import "ViewController.h"
#import "CustomButton.h"
@interface ViewController ()
{
    CustomButton *cornerButton;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    cornerButton = [[CustomButton alloc] initWithFrame:CGRectMake(100, 100, 120, 120)];
    cornerButton.backgroundColor = [UIColor blueColor];
    [cornerButton addTarget:self action:@selector(doAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:cornerButton];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)doAction:(id)sender{
    NSLog(@"click");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end


视图响应链的传递，如果这个过程中传到uiapplicationdelegate也没有响应，则当这个事件没有发生

uivewa-uicontrolview的view-uiwindow-uiapplication-uiapplicationdelegate


uiview继承自UIResponder，UIResponder视图响应方法：

//当手指触摸屏幕时触发(刚开始接触
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event;

//当手指触摸屏幕, 并且在视图内移动时触发(此时手指不离开屏幕
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event

//当手指离开屏幕时触发(接触结束)
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event


其它方法
//当触摸被取消时, 前提是手指必须触摸屏幕(例如, 电话进入时)
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event

//修改自身视图颜色
- (void)changeSelfColor
{
    self.backgroundColor = [UIColor randomColor];
}
 
//修该父视图颜色
- (void)changeSuperviewColor
{
    self.superview.backgroundColor = [UIColor randomColor];
}

//改变自身视图位置
- (void)changeSelfLocation
{
    self.center = CGPointMake(arc4random() % (270 - 50 + 1) + 50, arc4random() % (518 - 50 + 1) + 50 );
}


3-4 UI图像显示原理 相关面试问题
ui卡顿及掉帧原因
cpu和gpu是通过总线连接的，cpu的数据最终通过总线上传给gpu，gpu会
作相应位图的图层的渲染包括纹理的合成，之后把结果放到帧缓冲区中（frame buffer），由视频控制器
根据微信格信号在指定时间之前去提取帧缓冲区中屏幕显示内容，最终显示到手机屏幕上。
首先创建一个uiview，显示部份由calayer负责，calayer中有一个contents属性是最终要绘制到屏幕上的
位图，如一个uilable上显示hello word，contents属性包含了一个hello world的位图，系统在合适的时机回调一个drawrect方法，
我们可以在此方法内绘制其它内容在hello word之上。绘制好之后会经由core animation
框架交给opengl es渲染管线（gpu），进行渲染及文理的合成。最终显示在屏幕上。
calayer|core animation都发生在cpu
opengl发生在gpu

cpu的工作
layout display prepare commit  布局(frame设置及文字宽高计算)-显示或绘制（实际上是绘制的过程，drawrect）-作一些准备（图片的解码编码）-把位图提交到gpu（coreanimation）

gpu的渲染管线
5个步骤：
顶点着色 - 图元装配 - 光栅化 - 片断着色 - 片断处理
5个步骤完成之后提交到framebuffer中
由视频控制器到framebuffer中提取要显示的内容。



3-5 UI卡顿&掉帧原因 相关面试问题
正常情况下不卡顿是每秒60帧，相当于1帧16.7秒，在16.7秒的时候微信格信号会来取
cpu和gpu合成的frame buffer数据，如果gpu,cpu计算时间过长，当微信格信号来取帧的时候会取不到或取到一部份，就会产生卡顿掉帧现象

原因分析后如何提高tableview,scrollview滑动流畅性？
滑动优化方案：
cpu优化：
 对象创建调整销毁可以放到子线程去作，以节省cpu的时间。
 预排版（布局计算，文本计算）放到子线程去作
 预渲染（文本等异步绘制，图片解码方案）
 gpu优化：
 纹理渲染：（圆角，阴影蒙层，masterbounds设置 ）尽量避免离屏渲染
 可以根据异步绘制机制减轻压力
 视图混会：视图层级比较复杂，gpu会合成每一个相素点的相素值，gpu会作大量的计算，
 如果减轻视图层级的复杂性，也可以减轻gpu的压力，异步绘制机制减轻压力。
 
 

 3-6 UI绘制原理&异步绘制 相关面试问题
 设用uiview setneedsdisplay 并没有立即发生当前视频的绘制工作，而是在之后的某一时机
 才会进行绘制。为什么呢？
 uiview setneedsdisplay
       | 调用
       | 
 view.layer setneddsdisplay(会打一个脏标记)
       |
       |
 calayer display（当前runloop将要结束的时候才调用介入到绘制流程中）
       |  calayer display会判断layer是否响应displaylayer代理方法
       |
 layer.delegate responds to @selector(displaylayer:)
 （displayer代理方法不响应，则会进入系统绘制流程中）
 （displayer代理方法响应，则会进入异步绘制入口中）
 
 
 系统绘制流程：
  系统的内部calayer会创建一个backings store（cgcontextref上下文椎站中部顶取出context）
      |
  layer会判断是否有代理
   |              |
   |              | （没有代理）执行
   |
   |           layer drawincontext
   |（有代理）执行
layer.delegate drawlayer:incontext(作系统内部的绘制工作)
   |在合适的时机回调drawrect方法
   uiview drawrect
           |（无论是哪种分支，最后都由calayer上传到gpu中，也就是系统的位图）
           |
    calayer uploads backing store to gpu
    
    
异步绘制的原理
 如果实现了layer.delegate displaylayer这个代理方法，就会进入到异步绘制流程当中
 在这个代理方法中负责生成对应的位图，并把位图作为layer.contents属性提交
 
流程1主线程：
   view setneedsdisplay
      当runloop将要结束的时候调用
   calayer display 
      判断是否实现代理方法displaylayer函数
      如果实现会调用这个代理方法displaylayer以及方法内部的其它内容（切到子线程）
      
      
流程2子线程：
cgbitmapcontextcreate()创建位图上下文
corecraphic api 位图的绘制工作api
cgbitmapcontextcreateimage() 根据上下文这个方法生成位图图片再（切到主线程）

流程3主线程
calayer setcontents设置位图到contents中




3-7 UI离屏渲染 相关面试问题&面试总结

什么是离屏渲染，你对离屏渲染是怎样理解的？

在屏渲染：
当前屏幕渲染，gpu的渲染操作是在当前用于显示的屏幕缓冲区中过行
离屏渲染：
gpu在当前屏幕缓冲区以外新开辟一个缓冲区进行渲染。当设置某些图层属性，在这些属性已经准备好后才能显示到屏幕上，这样才触发了
离屏渲染。如设置视图圆角，蒙层遮罩

何时会触发离屏渲染？
圆角和masktobounds一起使用时
图层蒙版
阴影
光栅化

为何要避免离屏渲染？
cpu和gpu在绘制中作了大量工作，离屏渲染让opengles 触发了多通道渲染管件，产生额外开销
这样产生cpu和gpu耗时超过16.7耗秒(高级工程师回答)。初中级工程师回答：创建新的渲染缓冲区，上下文切换。会有gpu额外开销

uitableview滚动流畅性方案或思路？
cpu 子线程创建对象，销毁，布局

uiview和calayer关系
uiview事件传递响应
calayer显示工作  
用到了单一职责的设计原则，6大设计对象中



第4章

4-1 Objective-C相关面试问题

什么的分类，分类的实现机制和原理？（可以通过runtime去查看原理）

能否为分类添加实例变量？（考察关联对象的技术）

分类和扩展的区别？

代理的相关技术知识？

通知的实现机制和原理？ns开头的，没有开放出源码，考察对通知实现机制的理解

kvo的实现机制是怎样的，监听内容，以及kvc的原理

属性关键字，在定义创建类声明一些属性，retain copy assgin weak ，怎样使用copy
关键字



4-2 分类相关面试问题-1 category

你用分类都做了哪些事？
1。分类声明私有方法
定义一个分类，只把它的头文件引入到某些工具类的.m当中，对外不报露
2。分解体积庞大的类文件
类的功能复杂，把同一功能分类的放到一个分类文件当中
3。把framework的私有方法公开化

分类的特点？
运行时决议：编好分类文件之后并未把对应的内容给数组类中，而是在运行时加入
可以为系统类添加分类：uiview获取坐标的分类方法，系统类是不能添加扩展的

分类中都可以添加哪些内容？
实例方法 可以
类方法  可以
协议  可以
属性 可以 在分类中定义属性，只生成了get set方法，并未有添加实例变量
实例变量添加  可以通过运行时关联对象添加

分类的结构体分析

struct category_t{
    const char *name; 分类名称
    classref_t cls;  分类所属的数组类
    struct method_list_t *instancemethods;  实例方法列表
    struct method_list_t *classmethods;    类方法列表
    strut protocol_list_t *protocols;   协议方法列表
    struct property_list_t *instanceproperties;  实例属性例表
    
    method_list_t *methodsformeta(boll ismeta){
        if(ismeta) return classmethods;
        else return instancemethods;
    } 
    
    porperty_list_t *propertiesformeta(bool ismeta){
        if(ismeta)return nil;
        else return instanceproperties;
    }

通过分类的结构可以验证分类可以添加哪些内容 object-680版本runtime源代码

分类加载调用栈

_objc_init(程序启用时在运行时会调用这个方法，rutntime的初始化，然后再调用一系列方法后加载分类)
  | map_2_images(调用) 静象，程序，内存静象的处理
      |map_images_nolock(调用) 
          |_read_images(调用)  读静象。加载可执行文件到内存中
              | remethodizeclass(分类的加载内容从这个方法开始)
              
remethodiaeclass方法：

static void remthodizeclass(class cls)//(分类添加实例方法，类方法，属性，实例等，这里分析实例方法逻缉)
  category_list *cats;
  bool ismeta;
  
  runtimelock.assertwriting();
  
  ismeta = cls->ismetaclass();//判断当前类是否为元类对象，取决于当前添加的方法是实例方法还是类方法，这里假设实例方法，变量为no
  if(cats = unattachedcategoriesforclass(cls,false)){//获取类对应的还未有拼接整合的分类，从方法名可以看出，如果这个类有分类
      if(printconnecting){
          _objc_inform("class:attaching categories to class '%s' '%s'",cls->nameforlogging(),ismeta?"(meta):""");
      }
      //将分类cats拼接到cls上
      attachcategories(cls,cats,true);
      free(cats);
  }
 
 
attachcategories并接分类方法内部实现：

static void stachcategories(class cls,category_list *cats,bool flush_caches)
  if(!cats)return;//没分类就return
  if(printreplacemethods) printreplacements(cls,cats);
  
  bool ismeta = cls->ismetaclass();//如果这里是no，实例方法分类,为类（alloc出来的）添加分类，不是为元类添加分类
  
  //声明三个实例变量，都是二维数组,里面代表的是一个分类有几个方法
  [[method_t,method_t],[method_t,method_t]]
  method_list_t **mlists = (method_list_t**)malloc(cats->count *sizeof(*mlists));//方法列表
  property_list_t **proplists = (property_list_t**)malloc(cats->count *sizeof(*proplists));//属性列表
  protocol_list_t **proplists = (protocol_list_t**)malloc(cats->count *sizeof(*protocolists));//协议列表
  
  int mcount =0;//方法参总数
  int propcount =0;//属性总数
  int protocount = 0;//协议总
  int i = cats->count;//宿主类分类的总数
  bool frombundle = no;
  while(i--){//倒序遍历，最先访问最后编译的分类,多个分类有同名方法，最后编译的分类的同名方法会生效
     //获取一个分类
     auto&entry = cats->list[i];
     //获取该分类的方法列表
     method_list_t *mlist = entry.cat->methodsformeta(ismeta);
     if(mlist){
         //最后编译的分类最先添加到分类数组中
         mlists[mcount++] = mlist;
         frombundle |= entry.hi->isbundle();
      }
      //属性列表添加规则 同方法列表添加规则
      property_list_t *proplist = entry.cat->propertiesformeta(ismeta);
      if(proplist){
          proplists[propcount++] = proplist;
      }
      //协议列表添加规则 同方法列表添加规则
      protocol_list_t *protolist = entry.cat->protocols;
      if(protolist){
          proplists[propcount++] = proplist;
      }
      //获取宿主类当中的rw数据，其中包含宿主类的方法列表信息
      auto rw = cls->data();
      //主要是针对 分类中有关于实现内存管理相关方法情况下，就会覆盖掉系统原生的方法，retain release等
      preparemethodlists(cls,mlists,mcount,no,formbundle);
      /*
      rw 代表类
      methods 代表类的方法列表
      attachlists 方法的含义是 将含有mcount个元素的mlists拼接到rw的methods上
      *／
      rw->methods.attachlists(mlists,mcount);//分类的方法添加到宿主上面
      free(mlists);
      if(flush_caches && mcount>0) flushcaches(cls);
      rw->properties.attachlists(proplists,propcount);
      free(proplists);
  }
 


4-3 分类相关面试问题-2
addedlists是刚才传过来的二维数组,最面包含了多个分类，以及每个分类有多少个方法的二维数组
[method_t,method_t,...],[method_t]

attachlists拼接列表具体函数的实现，addedlists准备拼接的分类列表  准备添加的分类列表个数
void attachlists(list* const * addedlists, uint32_t addedcount){
    if(addedcount ==0)return;
    if(hasarray()){//主要分析这个if语句
        //列表中原有的元素方法总数 oldcount =2;
        unit32_t oldcount = array()->count;
        //拼接后的元素总数
        uint32_t newcount = oldcount +addedcount;
        //根据新总数重新分配内存
        setarray(array_t *)realloc(array(),array_t::bytesize)
        //重新设置元素总数
        array()->count = newcount;
        //内存移动 [[],[],[] [原有的第一个元素],[原有的第二个元素]]
        memmove(array()->lists+addedcount,array()->lists,oldcount*sizeof(array()->lists[0]));
        //内存拷贝
        [a--->[addedlists中的第一个元素]]，
        [a--->[addedlists中的第二个元素]]，
        [a--->[addedlists中的第三个元素]]，
        [原有的第一个元素],
        [原有的第二个元素],
        //把addedlists元素拷贝到list当中
        memcpy(array()->lists,addedlists,addedcount *sizeof(array()->lists[0]));
    }else if(!list && addedcount==1){
        //0 lists->1 list
        list = addedlists[0];
    }else{
        //1 list->many lists
        list * oldlist = list;
        uint32_t oldcount = lodlist ? 1:0;
        unit32_t newcount =  oldcount + addedcount;
        setarray(array_t *)malloc(array_t::bytesize(newcount));
        array()->count = newcount;
        if(oldlist)array()->lists[addedcount] = oldlist);
        memcpy(array()->lists,addedlists)
    }
}

通这上面这个列子，可以看出分类方法是可以覆盖掉宿主类方法的原因，宿主类方法实际是存在的
因为查找方法是根据选择器先查找的，所以同名方法是先执行分类方法，如果没有分类方法，再执行宿主类方法

分类添加的方法可以“覆盖”原类方法
同名分类方法谁能生效取决于编译顺序，最后被编译的分类会最优先被生效
名字相同的分类会引起编译报错，



4-4 关联对象相关面试问题
怎样为分类添加“成员变量”？
不能在定义声明上添加成员变量，可以用关联对象的技术为分类添加成员变量

相关方法： 
id objc_getassociatedobject(id object,const void *key)//根据指定的key到object这个对象当中获取指定的对象关联值
void objc_setassociatedobject(id object,const void*key,id value,objc_associationpolicy policy)//设定value，通过key与value建立关系，通过关联策略policy把key与value的关系关联到object上
关联策略分为copy retain assgin
void objc_removeassociatedobjects(id object)//根据指定对象移除它的所有关联对象

关联对象技术添加的成员变量被添加到哪儿里了？是不是添加到该分类对应的宿主类上了，还是添加到别的地方了？
答：肯定没被添加到宿主类上面，被添加到哪里了呢？

关联对象的本质：

关联对象是由associationsmanager 管理并在associationshashmap中存储，associationsmanager的成员变量associationshashmap去存储关联对象，
associationshashmap是一个全局容器，无论哪个对象添加了关联，都放到了这个同一个全局容器中。

如下结构：
objcassociation
      |
objc_association_copy_nonatomic(关联的协议，用copy协议关联了hello)
      |
    @"hello"





调用objc_setassociatedobject方法：
第一步：生成objecassociation，objecassociation 包含的成员结构 (objc_association_copy_nonatomic  @"hello")，这里描述通过assgin或retain关键字关联hello
第二步：通过objectassciationmap 包含（@selector(text) ，这个相当于sethello方法选择器），与 objcassociation再作关联
第三步：objectassciationmap 对象是放在associationshashmap 这个全局对象中的
第四步：associationshashmap（disguise(obj)当前被关联对象的指针值与objectassciationmap建立关联）
总结：associationshashmap全局容器关联 objectassciationmap    objectassciationmap 关联objecassociation

源码分析：
id objc_getassociateobject(id object, const void *key)
{
  return objc_getassociateobject_non_gc(object,key);
}
主要分析set函数：
void objc_setassociatedobject(id object ,const void *key,id value,objc_associationpolicy policy)
{
   objc_setassociatedobject_non_gc(object,key,value,policy);
}
void objc_removeassciatedobjects(id object){
  #if support _gc
      if(UseGC){
          auto_zone_erase_associative_refs(gc_zone,object);
      }
}

void _object_set_associative_reference(id object ,void *key,id value ,uintptr_t policy)
{
    objcassociation old_association(0,nil);
    id new_value = value? acquirevalue(value,policy):nil;
    {
        //关联对象管理类，c++实现一个类
        associationmanager manager;
        //获取其维护的一个associationshashmap,我们可以理解为是一个字典
        //是一个全局容器
        associationshashmap &associations(manager.associations());
        disguised_ptr_t disguised_object = disguise(object);
        if(new_value){
            //break any existing association
            //根据对象指针查找对应一个objectassociationmap结构的map
            associationshashmap::iterator i = associations.find(disguised_object);
            if(i != associations.end())
        }
    }
}

关联对象的数据结构

{
  "0x38473893":{
      "@selector(text)":{ //@property(retain) NSString *text;
        "value": "hello",
        "policy": "retain"
      }
     },
  "0x23373893":{
      "@selector(title)":{
        "value": "a obj",
        "policy": "copy"
      }
     },
}

怎样清除某个关联对象被关联的值呢？
setobject的value设为nil
void objc_setassociatedobject(id object,const void*key,id value,objc_associationpolicy policy)


4-5 扩展相关面试问题
扩展 extension

一般用扩展来做什么？
声明私用属性，不对子类报露
声明私有方法，为了方便阅读
声明私有成员变量与属性是有区别的

分类与扩展区别？
扩展是编译时决定的，分类是运行时决定
扩展只以声明的形式存在，多数情况下寄生于宿主类.m中
不能为系统类添加扩展 但可以为系统类添加分类

4-6 代理相关面试问题
准确的说是一种软件设计模式
ios中以@protocol形式体现
传递方式一对一 通知一对多方式

代理的工个流程是怎么样的

代理的协议生成   

协议  代理方  委托方
委托方要求代理方实现的接口全都定义在协议当中，协议中可声明属性以及方法。
协议方声明的方法由代理方进行实现，代理方实现的具体的方法可以会有返回值，返回值返回给委托方
委托方需要调用代理方遵从的协议和方法

协议中可以定义成员属性和方法，在协议中所声明的方法和属性代理方需要必需实现吗？
不一定，如果协议中声明的方法如果requider必须实现，如果是options则可实现可不实现

代理中可能遇到的问题？

一般委托方以weak关键字声明以规避循环引用

代理方  strong  委托方
委托方  weak声明  代理方



4-7 通知相关面试问题
代理和通知区别

通知：
使用观察者模式来实现的用于跨层传递消息的机制
传递方式是一对多的

代理：
代理是由代理模式实现的，代理传递方式是一对一，通知是一对多

通知实现：
发送者  经由通知中心 广播给多个观察者

如何实现通知机制？
ns开头的系统类是没有源代码的，不知道实现原理
假如自己设计实现通知，怎么实现？
通知中心类中可能会维护一个子典，它的key是noificationname,
value是observer_listo数组列表，包含通知接收的观察者，以及
观察者的回调方法相关信息。



4-8 KVO相关面试问题-1 
什么是kvo，kvo实现机制是什么样的

kvo全称是key-value observing
kvo是oc对观察者设计模式的又一实现
apple使用了isa混写（isa-swizzling）来实现kvo

isa混写技术在kvo中是怎样实现的呢？

当向通知中心注册了通知以后，观察者a中包括setter方法，isa pointer
系统会动态创建一个nskvonotifying_a的类，这个类重写setter方法，同时原来的
观察者a的isa指针会指向动态创建的这个nskvonotifying_a类，把isa的指向进行修改称为isa混写技术的方式
nskvonotifying_a的类实际上是观察者a的子类，通过子类重写setter方法来达到通知观察者的目的。


kvo的使用案例：

 AppDelegate.m
 
 
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 创建两个对象
    
    MObject *obj = [[MObject alloc] init];
    MObserver *observer = [[MObserver alloc] init];
    
    //调用kvo方法监听obj的value属性的变化，完成observer对obj对象value成员值临听，断点在这里的时候打印obj是mobserver
    [obj addObserver:observer forKeyPath:@"value" options:NSKeyValueObservingOptionNew context:NULL];
   
    //通过setter方法修改value，这时候value值变了，所以mobserver中的方法会临听到,断点在这里的
    时候打印obj是nskvonotifying_mobserver,isa指针已经重新指向了
    obj.value = 1;
    
    // 1 通过kvc设置value能否生效？
    [obj setValue:@2 forKey:@"value"];
}

@end


代码实现kvo

MObject.h

#import <Foundation/Foundation.h>

@interface MObject : NSObject

@property (nonatomic, assign) int value;

- (void)increase;

@end





MObject.m

#import "MObject.h"


@implementation MObject

- (id)init
{
    self = [super init];
    if (self) {
        _value = 0;
    }
    return self;
}

- (void)increase
{
    //直接为成员变量赋值
    [self willChangeValueForKey:@"value"];
    _value += 1;
    [self didChangeValueForK
    ey:@"value"];
}

@end



MObserver.h


#import <Foundation/Foundation.h>

@interface MObserver : NSObject

@end





MObserver.m

#import "MObserver.h"
#import "MObject.h"
@implementation MObserver

//一旦MObject的value值有变化，就会进入这个方法
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    //判断是不是被监听的成员对象以及成员变量
    if ([object isKindOfClass:[MObject class]] &&
         [keyPath isEqualToString:@"value"]) {
        
        // 获取value的新值
        NSNumber *valueNum = [change valueForKey:NSKeyValueChangeNewKey];
        NSLog(@"value is %@", valueNum);
    }
}

@end




  4-9 KVO相关面试问题-2
  
  系统重写的set方法增加了两行代码如下
//NSKVONotifying_A的setter实现
-(void)setValue:(id)obj
{
   //增加的一
  [self willChangeValueForkey:@"keyPath"];
  //调用父类实现，也即原来类的setter方法实现
  [super setValue:obj];
  //增加的二，这个方法会触发监听回调的方法- (void)observeValueForKeyPath:
  [self didChangeValueForKey:@"keyPath"];
}

面试的两个问题：
    // 1 通过kvc设置valuekvo能否生效？
    [obj setValue:@2 forKey:@"value"];
    问题一是在描述kvo与kvc之间的关系，这个是能生效的。为什么kvc设置value会使kvo生效呢？因为这个方法最
    终会调用obj中的setter方法，所以setter又是重写的，就能生效。
    
    // 2. 通过成员变量直接赋值value，kvo能否生效?
    [obj increase];，increase方法中_value += 1;
  


kvo的使用案例：

 AppDelegate.m
 
 
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 创建两个对象
    
    MObject *obj = [[MObject alloc] init];
    MObserver *observer = [[MObserver alloc] init];
    
    //调用kvo方法监听obj的value属性的变化，完成observer对obj对象value成员值临听，断点在这里的时候打印obj是mobserver
    [obj addObserver:observer forKeyPath:@"value" options:NSKeyValueObservingOptionNew context:NULL];
   
    //通过setter方法修改value，这时候value值变了，所以mobserver中的方法会临听到,断点在这里的
    时候打印obj是nskvonotifying_mobserver,isa指针已经重新指向了
    obj.value = 1;
    
    // 1 通过kvc设置value能否生效？
    [obj setValue:@2 forKey:@"value"];
    
    // 2. 通过成员变量直接赋值value能否生效?不生效。
    //为使生效，在increase方法手动让kvo生效，加入 willChangeValueForKey，didChangeValueForK
    ey就可监听到kvo的
    [obj increase];
    
    return YES;
}

@end


代码实现kvo

MObject.h

#import <Foundation/Foundation.h>

@interface MObject : NSObject

@property (nonatomic, assign) int value;

- (void)increase;

@end





MObject.m

#import "MObject.h"


@implementation MObject

- (id)init
{
    self = [super init];
    if (self) {
        _value = 0;
    }
    return self;
}

//increase方法手动让kvo生效，加入 willChangeValueForKey，didChangeValueForK
    ey就可监听到kvo的
- (void)increase
{
    //直接为成员变量赋值
    [self willChangeValueForKey:@"value"];
    _value += 1;
    [self didChangeValueForK
    ey:@"value"];
}

@end



MObserver.h


#import <Foundation/Foundation.h>

@interface MObserver : NSObject

@end





MObserver.m

#import "MObserver.h"
#import "MObject.h"
@implementation MObserver

//一旦MObject的value值有变化，就会进入这个方法
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    //判断是不是被监听的成员对象以及成员变量
    if ([object isKindOfClass:[MObject class]] &&
         [keyPath isEqualToString:@"value"]) {
        
        // 获取value的新值
        NSNumber *valueNum = [change valueForKey:NSKeyValueChangeNewKey];
        NSLog(@"value is %@", valueNum);
    }
}

@end






ViewController.h

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@end




ViewController.m

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSMutableArray *array = [NSMutableArray array];
    NSLog(@"%@",array);
}


@end



4-10 KVC相关面试问题

KVC是key-value coding的缩写
是苹果系统为我们提供的一种键值编码技术
两个方法：
方法1：
-(id)valueForKey:(NSString*)key
来获取和key同名或者所相似名称的一个实例变量的值
-(void)setValue:(id)value forKey:(NSString:)key
来设置某一对象当中和这个key同名或者说相似实例变量的值进行设置

键值编码技术是否会破坏面向对象编程方法或违背面向对象编程思想呢？
如果我们在知道某一个类或者说实例某一个私有变量名称的情况下，可在外界对已知的key可以对类内部的变量访问和设置的
所有会破坏面向对象编程思想

这两个方法的系统实现流程？

valueForKey调用流程：

系统通过key判断所访问的实例变量是否有get方法，如果有，会进行调用get方法，结束valueforkey方法，如果不存在get方法
会判断实例变量是否存在，+(BOOL)accessInstanceVariablesDirectly,这个方法默认返回yes，如果和key相同相似的成员变量存在
返回yes ，如果重写这个方法返回值，返回no，即使这会和key相同相似的成员变量存在，但返回no，也不能通过valueforkey获取到这个成员
变量，如果实例变量存在，会获取这个实例变量的值，结束valueforkey的调用流程。如果实例变量不存在，系统会调用当前valueforundefinedkey方法
会给出一个未定义key的异常结束这个流程

accessor method访问器方法是否存在的判断规则：
访问器方法定义是相仿的概念，key 对应 getKey , 属性名称为key和key相同，也可以返回这个key,key和isKey方法也对应

instance var
同名和相似成员变量
比如参数为key，获取的是_key，也可以获取_iskey, key,isKey,都可以满足成员变量的获取。



setValue的调用流程：
判断是否有和key相关的setter方法，如果有，会调用set方法，结束setValue方法，如果没有，会找和key相同相似的成员变量，
+(BOOL)accessInstanceVariablesDirectly这个方法去判断成员变量是否存在。是存在，给key对应的成员变量传值，如果不存在会调用
系统会调用当前valueforundefinedkey方法。会给出一个未定义key的异常结束这个流程





4-11 属性关键字相关面试问题&面试总结

属性关键字的分类：

1：读写权限相关关键字
readonly readwrite 默认是redwrite

2：原子性
atomic nonatomic 默认是atomic，这个会产生什么效果，它是可以保证赋值和获取是线程安全的，对成员的直接的一个获取赋值，
这个并不代表操作和访问，怎么理解呢？比如atomic修饰的是一个数组，对这个数组赋值获取能保证线程安全，但是如果对数组添加对象和移除对象，
是不能保证线程安全的，只保证数组的获取和赋值

3。引用计数关键字
retain/strong retain arc使用，strong mrc中使用
assign/unsafe_unretained assign基本数据修饰，对象数据类型能修饰但会产生野指针，因为基本数据类型在栈中，如果修饰对象，堆中类存释放了，但栈中还
有指针存在。而unsafe_unretained，不知道自己自己已经被释放，会野指针，闪退
mrc中使用频繁，arc中已经退出历史了。
weak copy

assign weak区别有哪些？
assign基本数据类型int bool，修饰对象类型时不改变引用计数。
assign修饰对象会产生悬垂指针。释放之后assign仍会指向原对象内存地址，这时访问对象会导致内存泄露

weak
不改变修饰对象的引用计数
所指的对象在被释放之后会自动置为nil

区别：
weak可以修饰对象，但不能修饰基本数据类型，assign两者都可修饰，但对象会产生内存泄漏。
assign修饰对象会产生悬垂指针。释放之后assign仍会指向原对象内存地址，这时访问对象会导致内存泄露
weak所指的对象在被释放之后会自动置为nil
两者都不改变被修饰对象的引用计数


weak指针修饰的对象在被弃掉之后为什么被指为nil呢？

copy
@property(copy)nsmutablearray *array? 这样的申明会导致什么问题呢？会产生的对象是不可变的对象数组

浅拷贝深拷贝理解：
浅拷贝：
有一个指针a，指向某一个对象内存，如果这时浅拷贝，会有一个b指针会指向一个同一内存地址
浅拷贝会增加对象的引用计数，并未发生内存分配
深拷贝：
有一个指针a指向一个对象内存，深拷贝，会产生另一个内容相同的内存，然后会有一个b指针指向
这块内存，两不指针指向不同的内存，但两块内存的内容相同

深拷贝不会增加引用计数，深拷贝产生内存分配，产生两块内存

如何区分，看是否开辟内存空间，是否影响引用计数，深拷贝不影响引用计数

copy
可变对象用copy，拷贝出的对象是不可变对象，深拷贝
可变对象用mutablecopy,拷贝出的对象是可变，深拷贝
不可变对象用copy,拷贝出的对象是不可变对象，浅拷贝
不可变对象用mutablecopy,拷贝出的对象是可变对象，深拷贝

总结：
可变对象的copy和mutablecopy都是深拷贝
不可变对象的copy是浅拷贝，指针拷贝，不可变对象的mutablecopy是深拷贝，内存拷贝
copy方法返回的都是不可变对象
mutablecopy方法返回的都是可变对象


@property(copy)nsmutablearray *array? 这样的申明会导致什么问题呢？
会产生的对象是不可变的对象数组，是深拷贝。只要copy操作就是不可变对象，不能添加，删除对象内容，这时会引起闪退。

oc笔试题总结

mrc下如何重写retain修饰变量的setter方法？
@property(nonatomic,retain) id obj;
-(void)setObj:(id)obj
{
  if(_obj != obj){//判断是为防止传入的是一个相同对象，会提前释放
     [_obj release];
     _obj = [_obj retain];
  }
}

请简述分类实现原理：
是由运行时决议的，不同分类当中含用同名分类方法，谁最终生效，取决于谁最后参与
编译，如果分类方法所添加的一个方法恰好是宿主类的一个同名方法，分类方法会覆盖
宿主类方法，这里的覆盖是指会遍历查找优选调用分类方法，实际上宿主类原名方法还是存在的。

kvo实现原理是怎样的？
kvo是系统观察者模式的别一种实现，kvo运用了isa混写技术，来动态运行时去为某一个类添加子类，子类重写
setter方法，同时把原有类isa指针指向这个子类。

能否为分类添加实例变量？
可通过关联对象为分类添加成员变量。





第5章节   动态运行时runtime的相关原理


5-1 Runtime数据结构相关面试题-1

1。编译时语言与obj这种动态语言之间的区别是什么？
2。消息传递与函数调用之间有什么区别？
3.当一个方法没有实现的时候，系统是怎样实现消息转发过程的？

想要得到上面答案，
从runtime的数据结构学起？
类对象与元类对象分别代表什么？
实例与类对象之间的关系？
类对象与元类对象之间的关系？
消息传递机制是怎样的？
消息传递过程中，如何进行缓存的方法查找？
消息转发流程是怎样的？
method-swizzling 方法混xiao  在运行时去替换一些方法的实现？
动态添加方法，动态方法解析？



数据结构？

objc_object:
id = objc_object，id对象在runtime中对应objc_object
objc_object结构体包括：
isa_t 共用体
关于isa操作相关方法：如通过结构体获取isa所指向的类对象，或者通过类对象的isa指针获取它的元类对象，以及遍列的方法。
弱引用相关的方法：标记一个对象它是否曾经有过弱引用指针
关联对象相关方法：比如说这个对象设置了一些关联属性，关联属性相关方法也在这个结构体中
内存管理相关方法实现：在mrc中retain,release,或arc,mrc下面都用到的autoreleasepool




objc_class:
Class = objc_class,OC中Class在runtime中对应objc_class，它也是一个结构体
objc_class继承自objc_object的结构体。
Class这个类是否是一个对象呢？Class这个类也是一个对象，称之为类对象，因为它继承自objc_object，
objc_class结构体包括：
Class  superClass:如果objc_class是类对象，superClass那指向的是父类对象，平时的类与父类的关系是通过
superClass去定义的。
cache_t  cache:表达方法缓存的，在消息传递过程中，会使用方法缓存的数据结构
class_data_bits_t   bits:一个类所定义的一些变量属性包括它的一些方法都在bits它的成员结构中，主要是对class_rw_t的封装。
class_rw_t代表类相关读写信息，对class_ro_t的封装，class_ro_t包括比如为分类添加的一些方法，以及协议在其中。ro表示readonly，代表只读
class_rw_t包含：class_ro_t,protocols,properties,methods,后面三个都是list_array_tt类型二维数组。如methods，第一层由不同分类构成数组，每个分类都是数组，里面包含method_t这样
数据结构  
class_ro_t，name类名（可以通过string获取一个类） ivars（声明定义的一些类的成员变量,一维数组） properties(一维数组)， protocols(一维数组),methods(一维数组)和class_rw_t中成员是有区别的。
class_rw_t里是二维数组，methodList存的内容一般是分类添加的内容，class_ro_t一维数组，methodList存的内容存的是原来类中添加的一些方法内容，包含method_t结构





isa指针:
共用体isa_t,共用体无论是32,64位架构中内存地址要么都是0,要么都是1
isa指针分两种类型：指针型isa，非指针型isa。指针型isa表示内存地址所有为,或我代表它指向的class地址。
比如说我们使用一个id = objc_object对象的时候，通过isa的内容，或取到它的类对象的地址。非指针型isa，它的
值的部份代表class地址，目的是节省内存的目的。
isa指针含义：可以回答指针型isa，非指针型isa。
isa指向：关于对象，其指向类对象，比如说实例，也就是oc当中id类型，runtime中的objc_object结构体，它的isa指针指向了
Class(类对象及objc_class)，Class(类对象)的isa指向元类对象（MetaClass）.
一个对象的方法调用，先找到这个对象的类对象，也就是class中进行方法查找
一个类方法的调用，通过类对象（class）的isa指针到它的元类对象中去查找方法
总结：没有创建实例的类，isa指针指向元类，类方法都会在元类中去查找
有创建实例的类，isa指针指向类对象，也就是这个类，方法在这个类对象中查找。



cache_t:
用于快速查找方法执行函数：比如说调用一个方法时，如果有缓存，就不需要在它的方法列表中一个个遍列
可以提高方法调用或消息传递的速度
是可增量扩展的哈希表结构：当结构存的量在增大，它会增量扩大内存空间，hash表提高查找效率
是局部性原理的最佳应用：在一般调用方法，调用频率高的方法放到缓存中
cache_t结构体：
cache_t是一个数组实现的，里面每个对象都是bucket_t结构体
bucket_t包含key,IMP. key对应oc中的select方法选择器，IMP是一个无类型函数指针，指向具体函数实现




method_t:
实际上是对于一个方法的抽象说明



5-2 Runtime数据结构相关面试题-2
method_t数据结构：
函数四要素：名称，返回值，参数，函数体
method_t：
SEL name;代表方法的名称 相当于name
const char* types;函数的返回值和参数的组合  返回值和参数
IMP imp;无类型函数指针，对应的函数体

types怎么表达函数的返回值和参数
type encodings苹果技术来表达
const char* types;
返回值（第一位置，因为在函数中返回值往往一个） 参数1 参数2 参数n
-(void)aMethod; v@:  v（void） @(id) ：(sel选择器)

整体数据结构runtime

objc_class继承自objc_object，objc_object有一个isa_t指针指向objc_class类型的类对象或者说元类对象
objc_class主要包含superclass(指向当前类的父类，是一个class类型，指向一个objc_class类型的指针) 
cache_t（消息传递中的缓存方法查找，装着8k的bucket_t的hash表 ）  
class_data_bits_t（表达的是类的基本信息，成员，属性，方法列表，以及分类的方法等，是对class_rw_t数据结构的封装）
class_rw_t包含class_ro_t ,methods,properties,protocols
class_ro_t包含分类相关的 name（类名称）,methodList,ivars(变量列表)，properties（属性列表）,protocols（协议列表）  



5-3 类对象与元类对象&消息传递相关面试问题


1。类对象和元类对象分别是什么，类对象和元类对象有什么区别？
类对象存储实例方法列表等信息 
元类对象是存储类方法列表信息内容

根类NSObject类，root class： 指向的父类是nil，即没父类
子类以及子类的子类，当一个实例是id类型时，当中有一个isa成员变量所指向的就是这个id所对应的类对象（子类或子类的子类）
如UIView *v = [[UIView alloc]init]; v中的isa指针指向类对象UIView
如Person类，有一个类方法+(void)eat; Person类中isa指针指向它的person元类对象，元类维护了这个类方法列表如eat方法，person的子类
同样也会指向一个person子类的元类对象
这些都是继承自objc_class，objc_class又继承自objc_object，所以才会有isa指针找到它们的类对象或元类对象

元类对象的isa指针指向哪里？
无论是子元类对象，根元类对象，它们的isa指针都是指向根元类对象，根元类对象的指针指向它本身

根元类对象它的superclass指针指向了根类对象root class这个比较特殊：

比如调用类方法是从元类对象方法列表中查找，从子类到父类
一级级查找，当调用的这个类方法在根元类对象找不到时，会找根类对象当中同名的实例方法实现
如果用同名方法，就会执行同名方法的调用。不会造成闪退。如果没找到，就会找根类对象的父类，即nil

比如调用实例方法，首先从类对象由子类到父类去遍列方法列表，没找到方法找父类的方法列表，未找到找
根类的方法列表，如果未找到就会走到消息转发流程

面试题：
#import "Mobile.h"
@interface phone :Mobile

@end

@implementation Phone
-(id)init
{ 
  self = [super init];
  if(self){
      NSLog("%@",NSStringFromClass([self class]));//消息的接收者是当前对象，class这个方法是在nsobject当中才有实现的
      NSLog("%@",NSStringFromClass([super class]));//super调用它的class实际接收者任然是当前对象，也就是phone，
      调super class是从当前对象的父类对象中开始查找方法实现，无论从哪查找都是找到nsobject当中，因为这里面有class方法
  }
}
@end


消息传递
方法1:
void objc_msgSend(void/*id self, SEL OP,...*) 第一个参数是对象消息的接收者，第二个是方法选择器名称，第三个是真正消息传递的方法参数
任何一个消息传递的书写[self class],通过编译器会转换成objc_msgSend(self,@selector(class))
方法2：
void objc_msgSendSuper(void/*struct objc_super *super,SEL op,...*/)  //接收对象objc_super，其实还是self对象，只是会从该对象所属的类的父类去查找方法，不对该类本身的方法去查找

super在编译中会是编译成objc_super
struct objc_super{
  _unsafe_unretained id receiver;//这个接收者其实就是当前对象self，即phone
  
  [super class]转换后objc_msgSendSuper(super,@selector(class)),所以无论调用super class 还是self class
  消息的接收者都是当前对象，打印都是phone
}


方法1与方法2的区别：
调用方法-查找缓存-有方法实现-invoke函数指针调用函数实现一次消息传递
调用方法-查找缓存-没有方法实现-根据当前实例的isa指针查找当前类对象方法列表-找到后-invoke函数指针调用函数实现一次消息传递
调用方法-查找缓存-没有方法实现-根据当前实例的isa指针查找当前类对象方法列表-未找到-向父类一级级方法列表查找，通过当前类对象superclass指针去查找父类方法列表，一直往向查指到nil为止
-未找到-会进入消息转发流程




