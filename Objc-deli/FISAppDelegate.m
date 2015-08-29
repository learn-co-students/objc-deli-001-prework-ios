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

- (NSString *) stringWithDeliLine:(NSArray *)deliLine {
    
    if (deliLine == nil || deliLine.count == 0) {
        NSString *emptyLineMessage = @"The line is currently empty.";
        return emptyLineMessage;
    } else {
        NSString *theLineIs = @"The line is:";
        for (NSUInteger i = 0; i < (deliLine.count); i++) {
            NSUInteger lineNumber = i + 1;
            NSString *personInLine = deliLine[i];
            theLineIs = [NSString stringWithFormat:@"%@\n%lu. %@", theLineIs, lineNumber, personInLine];
            
        }
        
        return theLineIs;

    }
    
}

- (NSMutableArray *) addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject: name];
    
    return deliLine;
    
}

- (NSString *) serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *currentCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    
    return currentCustomer;
    
}



/*
 
 *  Define your methods here!
 
 */

@end
