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
#import "GrowText.h"
#import "BackgroundStars_1.h"

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

    BackgroundStars_1 *backgroundStars_1 = [self createBackgroundStarts_1Contents];
    [self addChild:backgroundStars_1];
    IntroPlanetShape *introPlanetShape = [self createIntroPlanetShape];
    [self addChild:introPlanetShape];
    GrowText *growText = [self createGrowText];
    [self addChild:growText];
    SKAction *rotate = [SKAction rotateByAngle:M_PI duration:20];
//    SKAction *grow = [SKAction scaleBy:3 duration:3];
//    SKAction *shrink = [SKAction scaleBy:1/3 duration:3];
//    SKAction *keepRotating = [SKAction rotateByAngle:-M_1_PI duration:15];


    [introPlanetShape runAction:[SKAction repeatActionForever:rotate]];
//    [introPlanetShape runAction:shrink];
//    [introPlanetShape runAction:grow];
//    [introPlanetShape runAction:keepRotating];

}

-(BackgroundStars_1 *)createBackgroundStarts_1Contents
{
    BackgroundStars_1 *backgroundStars_1 = [BackgroundStars_1 node];
    backgroundStars_1 = [backgroundStars_1 createBackgroundStarts_1Contents];
    return backgroundStars_1;
}


-(GrowText *)createGrowText
{
    GrowText *growText = [GrowText node];
    growText = [growText createGrowTextContents];
    return growText;
}

-(IntroPlanetShape *)createIntroPlanetShape
{
    IntroPlanetShape *introPlanetShape = [IntroPlanetShape node];
   introPlanetShape = [introPlanetShape createPlanetShapeContents];
    return introPlanetShape;
}
-(void)handleTap:(UITapGestureRecognizer *)tapGestureRecognizer
{

}

@end
