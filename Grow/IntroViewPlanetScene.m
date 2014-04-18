//
//  OpeningViewPlanetScene.m
//  Grow
//
//  Created by Claire on 4/17/14.
//  Copyright (c) 2014 Claire Jencks. All rights reserved.
//

#import "IntroViewPlanetScene.h"
#import "IntroPlanetShape.h"
#import "GrowLabelNode.h"
#import "IntroPlanetShape.h"

@interface IntroViewPlanetScene ()

@property BOOL contentCreated;

@end


@implementation IntroViewPlanetScene

-(void)didMoveToView:(SKView *)view
{
    [super didMoveToView:view];
    if (!self.contentCreated) {
        [self createSceneContents];
        self.contentCreated = YES;
        UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
        [self.view addGestureRecognizer:tapGestureRecognizer];
    }
}

- (void)createSceneContents
{
    self.backgroundColor = [SKColor blackColor];
    self.scaleMode = SKSceneScaleModeAspectFill;

    GrowLabelNode *growLabelNode = [self createGrowLabelNode];
    [self addChild:growLabelNode];


}

-(GrowLabelNode *)createGrowLabelNode
{
    GrowLabelNode *growLabelNode = [GrowLabelNode node];
    growLabelNode = [growLabelNode createGrowLabelNodeContents];
    return growLabelNode;
} 

-(void)handleTap:(UITapGestureRecognizer *)tapGestureRecognizer
{

}

@end
