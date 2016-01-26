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
    NSString *deliLineString = @"The line is:";
    
    if ([deliLine count]) {
        for (NSUInteger i = 0; i < [deliLine count]; i ++) {
            NSUInteger deliLineOrder = i + 1;
            deliLineString = [deliLineString stringByAppendingFormat:@"\n%lu. %@", deliLineOrder, deliLine[i]];
        }
    } else {
        deliLineString = @"The line is currently empty.";
    }
    
    return deliLineString;
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    return [deliLine addObject:name];
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSUInteger firstInLine = 0;
    NSString *nextCustomer = deliLine[firstInLine];
    [deliLine removeObjectAtIndex:(firstInLine)];
    return nextCustomer;
}

@end
