//
//  UIViewController+Categories.h
//  MvvmSampleObjC
//
//  Created by boyankov on 2019-W29-17-July-Wed.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (StoryboardCreation)
/**
Instantiate initial `UIViewController` object from given `UIStoryboard` name.
@param storyboardName Name of the storyboard.
@param bundle Bundle for the storyboard.
@return Optional `UIViewController`.
 */
+ (nullable __kindof UIViewController *)initialFromStoryboardWithName:(nonnull NSString *)storyboardName
                                                               bundle:(nullable NSBundle *)bundle;

/**
Instantiate `UIViewController` object from given `UIStoryboard` name.
@param storyboardName Name of the storyboard.
@param bundle Bundle for the storyboard.
@param identifier Identifier for the `UIViewController` we are instantiating.
@return Optional `UIViewController`.
 */
+ (nullable __kindof UIViewController *)fromStoryboardWithName:(nonnull NSString *)storyboardName
                                                        bundle:(nullable NSBundle *)bundle
                                                    identifier:(nonnull NSString *)identifier;
@end
