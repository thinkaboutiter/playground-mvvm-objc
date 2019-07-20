//
//  FooViewController.h
//  MvvmSampleObjC
//
//  Created by Boyan Yankov on 2019-W29-21-Jul-Sun.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
#import "FooViewModel.h"

@interface FooViewController : BaseViewController <FooViewModelConsumer>

- (instancetype _Nonnull)initWithViewModel:(id<FooViewModel> _Nonnull)viewModel NS_DESIGNATED_INITIALIZER;
- (instancetype _Nonnull)initWithNibName:(NSString * _Nullable)nibNameOrNil
                                  bundle:(NSBundle * _Nullable)nibBundleOrNil NS_UNAVAILABLE;
- (instancetype _Nullable)initWithCoder:(NSCoder * _Nonnull)aDecoder NS_UNAVAILABLE;

@end
