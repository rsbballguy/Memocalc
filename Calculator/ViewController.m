//
//  ViewController.m
//  Calculator
//
//  Created by Rahul Sundararaman on 2/8/16.
//  Copyright © 2016 Rahul Sundararaman. All rights reserved.
//

#import "ViewController.h"
#import "UIConst.h"
#import "RecognizerManager.h"
#import "EditOptionsViewController.h"
#import "OptionKeys.h"

@interface ViewController ()
@property (nonatomic, strong)  WPTextView * textView;
@property (nonatomic, strong)  NSLayoutConstraint *keyboardHeight;
@property (nonatomic, strong)  NSLayoutConstraint *suggestionsHeight;
@end

@implementation ViewController
@synthesize keyboardHeight;
@synthesize suggestionsHeight;
@synthesize textView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    CGRect scrollRect = CGRectMake(5, 5, screenWidth-5, screenHeight/3);
    UIScrollView* scrollView = [[UIScrollView alloc] initWithFrame:scrollRect];
    scrollView.pagingEnabled = YES;
    UILabel *testLabel1 = [[UILabel alloc]initWithFrame:CGRectMake(5, 5, 100, 44)];
    [testLabel1 setText:@"testLabel1"];
    [testLabel1 setBackgroundColor:[UIColor redColor]];
    [scrollView addSubview:testLabel1];
    
    UILabel *testLabel2 = [[UILabel alloc]initWithFrame:CGRectMake(105, 100, 100, 44)];
    [testLabel2 setText:@"testLabel2"];
    [testLabel2 setBackgroundColor:[UIColor redColor]];
    [scrollView addSubview:testLabel2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
