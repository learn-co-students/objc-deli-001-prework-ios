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
    NSMutableString *result = [[NSMutableString alloc] init];
    if ([deliLine count] == 0) {
        [result appendString:@"The line is currently empty."];
    } else {
        [result appendString:@"The line is:"];
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            [result appendFormat:@"\n%lu. %@", i + 1, deliLine[i]];
        }
    }
    return result;
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *nextCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return nextCustomer;
}

@end
