//
//  PublicInterface.m
//  DemoFramework
//
//  Created by Yogesh Singh on 24/05/20.
//  Copyright © 2020 Yogesh Singh. All rights reserved.
//

#import "PublicInterface.h"
#import "PrivateInterface.h"

@implementation PublicInterface

+ (NSString *)hello {
    NSString *string = @"Hello, World!";
    NSLog(@"%@", string);
    return string;
}

- (BOOL)initialSetup {
    return [self privateMethod];
}

- (BOOL)privateMethod {
    NSLog(@"executing privateMethod");
    return YES;
}

- (BOOL)invokePrivateClass {
    return [PrivateInterface doPrivateOperations];
}

@end
