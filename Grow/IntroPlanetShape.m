//
//  IntroPlanetShape.m
//  Grow
//
//  Created by Claire on 4/17/14.
//  Copyright (c) 2014 Claire Jencks. All rights reserved.
//

#import "IntroPlanetShape.h"

@implementation IntroPlanetShape

-(IntroPlanetShape *)createPlanetShapeContents
{                                                                       //x,y, width, height
//    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(320, 300, 200, 200)];
//    self.path = [ovalPath CGPath];
//    self.strokeColor = [SKColor whiteColor];
//    self.fillColor = [SKColor whiteColor];
//    self.name = @"planet";
//    return self;

    IntroPlanetShape *introPlanetShape = [IntroPlanetShape spriteNodeWithImageNamed:@"GrowProject_bg1planets.png"];
    introPlanetShape.position = CGPointMake(100,100);
    return introPlanetShape;
}
@end
