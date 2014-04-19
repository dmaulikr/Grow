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
    IntroPlanetShape *introPlanetShape = [IntroPlanetShape spriteNodeWithImageNamed:@"GrowPlanetConcept1copy.png"];
    introPlanetShape.size = CGSizeMake(500, 500);
    introPlanetShape.position = CGPointMake(330, 450);
    return introPlanetShape;
}
@end
