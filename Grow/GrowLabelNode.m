//
//  GrowLabelShape.m
//  Grow
//
//  Created by Claire on 4/17/14.
//  Copyright (c) 2014 Claire Jencks. All rights reserved.
//

#import "GrowLabelNode.h"

@implementation GrowLabelNode

-(GrowLabelNode *)createGrowLabelNodeContents
{

    GrowLabelNode *growLabelNode = [[GrowLabelNode alloc] initWithFontNamed:@"futura"];
    growLabelNode.position = CGPointMake(300, 700);
    growLabelNode.color = [SKColor whiteColor];
    growLabelNode.text = @"GROW";
    growLabelNode.fontSize = 100;
    return growLabelNode;
}

@end