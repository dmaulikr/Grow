//
//  BackgroundStars_1.m
//  Grow
//
//  Created by Claire on 4/18/14.
//  Copyright (c) 2014 Claire Jencks. All rights reserved.
//

#import "BackgroundStars_1.h"

@implementation BackgroundStars_1

-(BackgroundStars_1 *)createBackgroundStarts_1Contents
{
    BackgroundStars_1 *backgroundStars_1 = [[BackgroundStars_1 alloc]init];
    backgroundStars_1.size = CGSizeMake(640, 1136);
    backgroundStars_1.position = CGPointMake(320, 1);
    backgroundStars_1.color = [UIColor whiteColor];
    return backgroundStars_1;

- (SKEmitterNode *) newExplosion: (float)posX : (float) posy
    {
        SKEmitterNode *emitter =  [NSKeyedUnarchiver unarchiveObjectWithFile:[[NSBundle mainBundle] pathForResource:@"StarParticle" ofType:@"sks"]];
        emitter.position = CGPointMake(posX,posy);
        emitter.name = @"starParticle";
        emitter.targetNode = self.scene;
        emitter.numParticlesToEmit = 1000;
        emitter.zPosition=2.0;
        return emitter;
    }
}
@end

