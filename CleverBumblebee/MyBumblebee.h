//
//  MyBumblebee.h
//  CleverBumblebee
//
//  Created by Alexey Kinyov on 1/24/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "SimpleAudioEngine.h"

@interface MyBumblebee : CCNode {
    CGFloat timer;
    CGFloat timerSpeed;
    CDSoundSource *sound_;
}

@property(nonatomic, retain) CDSoundSource *sound;

- (void)playZh;

@end
