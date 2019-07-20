//
//  InitialDependencyContainer.h
//  MvvmSampleObjC
//
//  Created by Boyan Yankov on 2019-W29-21-Jul-Sun.
//  Copyright © 2019 boyankov@yahoo.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@class InitialViewController;

@interface InitialDependencyContainer : NSObject
- (InitialViewController* _Nonnull)makeInitialViewController;
@end
