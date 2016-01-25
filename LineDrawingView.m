//
//  LineDrawingView.m
//  DrawingApp1
//
//  Created by Kerry Toonen on 2016-01-24.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import "LineDrawingView.h"

@implementation LineDrawingView


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        pathArray=[[NSMutableArray alloc]init];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    
    [[UIColor redColor] setStroke];
    for (UIBezierPath *_path in pathArray)
        [_path strokeWithBlendMode:kCGBlendModeNormal alpha:1.0];
    
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    myPath=[[UIBezierPath alloc]init];
    myPath.lineWidth=10;
    
    
    UITouch *myTouch=[[touches allObjects] objectAtIndex:0];
    [myPath moveToPoint:[myTouch locationInView:self]];
    [pathArray addObject:myPath];
    
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    UITouch *myTouch=[[touches allObjects] objectAtIndex:0];
    [myPath addLineToPoint:[myTouch locationInView:self]];
    [self setNeedsDisplay];
    
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    
}



@end
