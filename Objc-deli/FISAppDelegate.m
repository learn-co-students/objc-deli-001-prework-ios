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
    NSMutableString *lineCondition = [@"The line is:" mutableCopy];
    
    if ([deliLine count] == 0) {
        return [NSString stringWithFormat:@"The line is currently empty."];
    } else {
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            NSUInteger customerNumber = i + 1;
            NSString *customerName = deliLine[i];
            [lineCondition appendFormat:@"\n%lu. %@", customerNumber, customerName];
        }
    }
    return lineCondition;
}

- addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
    return nil;
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *firstInLine = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return firstInLine;
}

@end
