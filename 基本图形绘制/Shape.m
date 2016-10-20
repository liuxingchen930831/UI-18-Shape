//
//  Shape.m
//  基本图形绘制
//
//  Created by liuxingchen on 16/10/20.
//  Copyright © 2016年 liuxingchen. All rights reserved.
//

#import "Shape.h"

@implementation Shape

- (void)drawRect:(CGRect)rect {
//    //正方形
//   UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(50, 50, 100, 100)];
//    [path fill]; //填充
    
    //椭圆形
//    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(50, 50, 100, 80)];
//    [path stroke];
    
    
    //圆角正方形
//    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(50, 50, 100, 60) cornerRadius:20];
//    [path stroke];
    
//    //圆形
    CGPoint center = CGPointMake(150, 150);
//    /**
//     *  Center:圆心
//        radius:半径
//        startAngle:开始弧度
//        endAngle:结束的弧度 M_PI宏是180° M_PI_2宏是90°
//        clockwise:YES:顺时针 NO:逆时针
//     */
//    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:15 startAngle:0 endAngle:M_PI * 2 clockwise:YES];
//    [path stroke];
    
//    //圆弧
//    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:15 startAngle:0 endAngle:M_PI_2 clockwise:YES];
//    [path stroke];
    
    //扇形
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:75 startAngle:0 endAngle:M_PI_2 clockwise:YES];
    //在圆弧的基础上添加一条线到圆心
    [path addLineToPoint:center];
    //关闭路径方法:会自动绘制从路径的终点到起点的路径
    [path closePath];
    
    path.lineWidth = 4;
    [[UIColor redColor]set];
    
    [path stroke];
    [path fill];//注意：填充必须是一个完整的封闭路径,默认就会自动关闭路径
    
   
    
}


@end
