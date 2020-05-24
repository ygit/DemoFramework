//
//  PublicInterface.h
//  DemoFramework
//
//  Created by Yogesh Singh on 24/05/20.
//  Copyright © 2020 Yogesh Singh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PublicInterface : NSObject

+ (NSString *)hello;

- (BOOL)initialSetup;

- (BOOL)invokePrivateClass;

@end

NS_ASSUME_NONNULL_END
