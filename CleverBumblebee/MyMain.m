//
//  MyMain.m
//  CleverBumblebee
//
//  Created by Alexey Kinyov on 1/24/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "MyMain.h"
#import "MyBumblebee.h"

@implementation MyMain

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	MyMain *layer = [MyMain node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

- (id)init
{
	if( (self=[super init])) {
            
        CGSize size = [[CCDirector sharedDirector] winSize];
        
        CCSprite *background = [CCSprite spriteWithFile:@"background.png"]; 
        background.position = ccp(size.width * 0.5, size.height * 0.5);
        [self addChild:background];
        
        bumblebee = [MyBumblebee node];
        bumblebee.position = ccp(size.width * 0.5, size.height * 0.52);
        [self addChild:bumblebee];
        
//        CCSprite *sprite = [CCSprite spriteWithFile:@"Default.png"];
//        sprite.position = ccp(size.width/2, size.height/2);
//        sprite.rotation = -90;
//        [self addChild:sprite];
        
        self.isTouchEnabled = YES;
	}
	return self;
}

-(void) registerWithTouchDispatcher
{
	[[CCTouchDispatcher sharedDispatcher] addTargetedDelegate:self priority:0 swallowsTouches:YES];
}

-(BOOL) ccTouchBegan:(UITouch *)touch withEvent:(UIEvent *)event
{
    [bumblebee playZh];
    return YES;
}

-(void) ccTouchMoved:(UITouch *)touch withEvent:(UIEvent *)event
{
}

-(void) ccTouchEnded:(UITouch *)touch withEvent:(UIEvent *)event
{
}

@end
