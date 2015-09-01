//
//  FISAppDelegate.m
//  Objc-deli
//
//  Created by Al Tyus on 2/3/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    NSMutableString *deliLineQueue = [[NSMutableString alloc] initWithString:@"The line is:"];
    
    if ([deliLine count] == 0) {
        NSString *lineEmpty = @"The line is currently empty.";
        return lineEmpty;
    } else {
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            [deliLineQueue appendString: [NSString stringWithFormat: @"\n%lu. %@", i + 1, deliLine[i]]];
        }
        return deliLineQueue;
    }
    
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject: name];
    return;
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *firstCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return firstCustomer;
}

@end
