//
//  MyBumblebee.m
//  CleverBumblebee
//
//  Created by Alexey Kinyov on 1/24/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "MyBumblebee.h"

#define kSoundBumblebee @"Bumblebee.m4a"
#define kTimerSpeedMin 0.6
#define kTimerSpeedMax 2.0

enum MyBumblebeeTags {
    kBumblebeeTag = 1,
};

@implementation MyBumblebee

@synthesize sound = sound_;

- (id)init
{
    if ((self = [super init])) {
        
        CCSprite *bumblebee = [CCSprite spriteWithFile:@"bumblebee.png"];
        [self addChild:bumblebee z:0 tag:kBumblebeeTag];

        [self scheduleUpdate];
        
        self.sound = [[SimpleAudioEngine sharedEngine] soundSourceForFile:kSoundBumblebee];        
        //self.sound.looping = YES;
    }
    return self;
}

- (void)update:(ccTime)dt
{
    timer += timerSpeed * dt;
    while (timer > 1.0) {
        timer -= 1.0;
    }
    
    timerSpeed += (kTimerSpeedMin - kTimerSpeedMax) * 0.01;
    if (timerSpeed < kTimerSpeedMin) {
        timerSpeed = kTimerSpeedMin;
    }
    
    CCSprite *bumblebee = (CCSprite *)[self getChildByTag:kBumblebeeTag];
    bumblebee.rotation = 6.0 * sinf(timer * 2 * M_PI);
}

- (void)playZh
{
    self.sound.gain = 0.05;
    [self.sound play];
    timerSpeed = kTimerSpeedMax;
}

- (void)dealloc
{
    [sound_ release];
    [super dealloc];
}

@end
