//
//  MyMain.h
//  CleverBumblebee
//
//  Created by Alexey Kinyov on 1/24/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@class MyBumblebee;

@interface MyMain : CCLayer {
    MyBumblebee *bumblebee;
}

+(CCScene *) scene;

@end
