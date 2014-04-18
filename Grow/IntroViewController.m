//
//  OpeningViewController.m
//  Grow
//
//  Created by Claire on 4/17/14.
//  Copyright (c) 2014 Claire Jencks. All rights reserved.
//

#import "IntroViewController.h"
#import "IntroViewPlanetScene.h"
#import <SpriteKit/SpriteKit.h>

@interface IntroViewController ()

@end

@implementation IntroViewController

-(void)viewDidLoad
{

}
- (void)viewWillAppear:(BOOL)animated
{
    SKView *spriteView = (SKView *)self.view;
    spriteView.showsDrawCount = YES;
    spriteView.showsFPS = YES;
    spriteView.showsNodeCount = YES;
    IntroViewPlanetScene *introViewPlanetScene = [[IntroViewPlanetScene alloc] initWithSize:CGSizeMake(640, 1136)];
    [spriteView presentScene:introViewPlanetScene];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
