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
{
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(-422.5 - 320, -1233.5, 1500, 1500)];
    self.path = [ovalPath CGPath];
    self.strokeColor = [SKColor whiteColor];
    self.fillColor = [SKColor whiteColor];
    self.name = @"planet";
    return self;
}
@end
