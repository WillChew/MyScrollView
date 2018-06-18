//
//  ViewController.m
//  MyScrollView
//
//  Created by Will Chew on 2018-06-18.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@property (nonatomic,strong) UIView *window;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupViews];
}

-(void)setupViews {
    UIView *window = [[UIView alloc]initWithFrame:CGRectZero];
    window.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:window];
    window.backgroundColor = UIColor.blackColor;
    [window.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    [window.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
    [window.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    [window.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
    [window.widthAnchor constraintEqualToAnchor:self.view.widthAnchor].active = YES;
    [window.heightAnchor constraintEqualToAnchor:self.view.heightAnchor].active = YES;
    self.window = window;
    
    //MYSCROLLVIEW
    
    MyScrollView *myScrollView = [[MyScrollView alloc]initWithFrame:CGRectZero];
    myScrollView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.window addSubview:myScrollView];
    [myScrollView.topAnchor constraintEqualToAnchor:self.window.topAnchor].active = YES;
    [myScrollView.bottomAnchor constraintEqualToAnchor:self.window.bottomAnchor].active = YES;
    [myScrollView.leadingAnchor constraintEqualToAnchor:self.window.leadingAnchor].active = YES;
    [myScrollView.trailingAnchor constraintEqualToAnchor:self.window.trailingAnchor].active = YES;
    myScrollView.backgroundColor = UIColor.purpleColor;
    
    

    
    
    
    
    //Red
    UIView *redBox = [[UIView alloc]initWithFrame:CGRectZero];
    redBox.translatesAutoresizingMaskIntoConstraints = NO;
    redBox.backgroundColor = UIColor.redColor;
    [myScrollView addSubview:redBox];
    [redBox.widthAnchor constraintEqualToConstant:100].active = YES;
    [redBox.heightAnchor constraintEqualToConstant:100].active = YES;
    [redBox.leadingAnchor constraintEqualToAnchor:self.window.leadingAnchor constant:20].active = YES;
    [redBox.topAnchor constraintEqualToAnchor:self.window.topAnchor constant:20].active = YES;
    
    //Green
    
    UIView *greenBox = [[UIView alloc]initWithFrame:CGRectZero];
    greenBox.translatesAutoresizingMaskIntoConstraints = NO;
    greenBox.backgroundColor = UIColor.greenColor;
    [myScrollView addSubview:greenBox];
    [greenBox.heightAnchor constraintEqualToConstant:200].active = YES;
    [greenBox.widthAnchor constraintEqualToConstant:150].active = YES;
    [greenBox.topAnchor constraintEqualToAnchor:self.window.topAnchor constant:150].active = YES;
    [greenBox.leadingAnchor constraintEqualToAnchor:self.window.leadingAnchor constant:150].active = YES;
    
    //Blue
    
    UIView *blueBox = [[UIView alloc]initWithFrame:CGRectZero];
    blueBox.translatesAutoresizingMaskIntoConstraints = NO;
    blueBox.backgroundColor = UIColor.blueColor;
    [myScrollView addSubview:blueBox];
    [blueBox.widthAnchor constraintEqualToConstant:200].active = YES;
    [blueBox.heightAnchor constraintEqualToConstant:150].active = YES;
    [blueBox.leadingAnchor constraintEqualToAnchor:self.window.leadingAnchor constant:40].active = YES;
    [blueBox.topAnchor constraintEqualToAnchor:self.window.topAnchor constant:400].active = YES;
    
    //yellow
    
    UIView *yellowBox = [[UIView alloc]initWithFrame:CGRectZero];
    yellowBox.translatesAutoresizingMaskIntoConstraints = NO;
    yellowBox.backgroundColor = UIColor.yellowColor;
    [myScrollView addSubview:yellowBox];
    [yellowBox.widthAnchor constraintEqualToConstant:180].active = YES;
    [yellowBox.heightAnchor constraintEqualToConstant:150].active = YES;
    [yellowBox.leadingAnchor constraintEqualToAnchor:self.window.leadingAnchor constant:100].active = YES;
    [yellowBox.topAnchor constraintEqualToAnchor:self.window.topAnchor constant:600].active = YES;
    
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panGestureRecognizer:)];
    [myScrollView addGestureRecognizer:panGesture];
    
    
    myScrollView.frame = self.view.frame;
    
    CGSize size = myScrollView.bounds.size;
    myScrollView.contentSize = size;
    NSLog(@"%@", NSStringFromCGSize(size));
    
}

-(void)viewDidAppear {
    CGRect newFrame = CGRectMake(0, 100, self.window.frame.size.width, self.window.frame.size.height);
    self.window.bounds = newFrame;
    [self.window setBounds:newFrame];
}

-(void)panGestureRecognizer:(UIPanGestureRecognizer*)sender {
    
}


@end
