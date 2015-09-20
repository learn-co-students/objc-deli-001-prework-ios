//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

/*
 
 *  Define your methods here!
 
 */

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    NSUInteger lengthOfLine = [deliLine count];
    
    if (lengthOfLine == 0) {
        return @"The line is currently empty.";
    }
    
    NSMutableString *theLine = [@"The line is:" mutableCopy];
    
    for (NSUInteger i = 0; i < lengthOfLine; i++) {
        [theLine appendFormat:@"\n%lu. %@", i + 1, deliLine[i] ];
    }
    
    return theLine;
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
}

- (NSString *) serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *firstInLine = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return firstInLine;
}

@end
