//
//  PublicInterfaceSpec.m
//  DemoFrameworkTests
//
//  Created by Yogesh Singh on 25/05/20.
//  Copyright © 2020 Yogesh Singh. All rights reserved.
//

@import Quick;
@import Nimble;
@import OCMock;
@import DemoFramework;

@interface PublicInterface (Spec)
- (BOOL)privateMethod;
@end


QuickSpecBegin(PublicInterfaceSpec)

describe(@"a public interface", ^{
    
    context(@"when hello is invoked", ^{
        
        it(@"returns hello world string", ^{
            
            NSString *string = [PublicInterface hello];
            expect(string).to(equal(@"Hello, World!"));
        });
    });
    
    context(@"when initial setup is done", ^{
        
        __block PublicInterface *interface;
        beforeEach(^{
            interface = [PublicInterface new];;
        });
        
        afterEach(^{
            interface = nil;
        });
        
        it(@"invokes a private method", ^{

            id mock = OCMPartialMock(interface);
            OCMExpect([mock privateMethod]);
            
            [interface initialSetup];
            
            OCMVerifyAll(mock);
        });
        
        it(@"successfully completes", ^{
            BOOL value = [interface initialSetup];
            expect(value).to(beTruthy());
        });
        
        it(@"performs private class operation successfully", ^{
            
            BOOL value = [interface invokePrivateClass];
            expect(value).to(beTruthy());
        });
    });
});

QuickSpecEnd
