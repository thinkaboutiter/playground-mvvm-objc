//
//  AppConstants.h
//  MvvmSampleObjC
//
//  Created by boyankov on 2019-W29-17-July-Wed.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, StoryboardId) {
    kStoryboardId_initial,
    kStoryboardId_dummy,
};

@interface AppConstants : NSObject

+ (nullable NSString *)storyboardNameForStoryboardId:(StoryboardId)storyboardId;

@end
