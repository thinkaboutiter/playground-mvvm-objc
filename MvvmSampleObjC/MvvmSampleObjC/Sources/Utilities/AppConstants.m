//
//  AppConstants.m
//  MvvmSampleObjC
//
//  Created by boyankov on 2019-W29-17-July-Wed.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#import "AppConstants.h"

static NSString * const storyboardName_initial = @"Initial";
static NSString * const storyboardName_dummy = @"Dummy";

@implementation AppConstants

+ (NSString * _Nullable)storyboardNameForStoryboardId:(StoryboardId)storyboardId {
    NSString* _Nullable result;
    switch (storyboardId) {
        case kStoryboardId_initial: {
            result = storyboardName_initial;
            break;
        }
        case kStoryboardId_dummy: {
            result = storyboardName_dummy;
            break;
        }
        default:
            result = nil;
            break;
    }
    return result;
}

@end
