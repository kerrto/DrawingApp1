//
//  ViewController.m
//  DrawingApp1
//
//  Created by Kerry Toonen on 2016-01-24.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    drawScreen=[[LineDrawingView alloc]initWithFrame:CGRectMake(0, 45, 768, 1004)];
    [drawScreen setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:drawScreen];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
