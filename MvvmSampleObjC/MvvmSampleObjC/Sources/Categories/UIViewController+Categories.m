//
//  UIViewController+Categories.m
//  MvvmSampleObjC
//
//  Created by boyankov on 2019-W29-17-July-Wed.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#import "UIViewController+Categories.h"

@implementation UIViewController (StoryboardCreation)
+ (UIViewController *)initialFromStoryboardWithName:(NSString *)storyboardName
                                             bundle:(NSBundle *)bundle
{
    UIViewController* result = [[UIStoryboard storyboardWithName:storyboardName bundle:bundle] instantiateInitialViewController];
    if (result == nil) {
        debugLog(@"❌ %s » \nError:\n%@\n", __PRETTY_FUNCTION__, @"Unable to instantiate initial view controller!");
        return nil;
    }
    return result;
}

+ (UIViewController *)fromStoryboardWithName:(NSString *)storyboardName
                                      bundle:(NSBundle *)bundle
                                  identifier:(NSString *)identifier
{
    UIViewController* result = [[UIStoryboard storyboardWithName:storyboardName bundle:bundle] instantiateViewControllerWithIdentifier:identifier];
    if (result == nil) {
        debugLog(@"❌ %s » \nError:\n%@\n", __PRETTY_FUNCTION__, [NSString stringWithFormat:@"Unanble to instantiate view controller with identifier=%@", identifier]);
        return nil;
    }
    return result;
}

@end
