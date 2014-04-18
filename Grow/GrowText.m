//
//  GrowText.m
//  Grow
//
//  Created by Claire on 4/18/14.
//  Copyright (c) 2014 Claire Jencks. All rights reserved.
//

#import "GrowText.h"

@implementation GrowText

-(GrowText *)createGrowTextContents
{
    GrowText *growText = [[GrowText alloc]initWithImageNamed:@"GrayScaleLogo.png"];
    growText.size = CGSizeMake(400, 200);
    growText.position = CGPointMake(320, 800);
    return growText;

}

@end
