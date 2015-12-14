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

- (NSString *)stringWithDeliLine:(NSArray *)deliLine
{
    if ([deliLine count] > 0) {
        NSMutableString *deliLineAsString = [@"The line is:" mutableCopy];
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            [deliLineAsString appendFormat:@"\n%li. %@", (i + 1), deliLine[i]];
        }
        NSLog(@"%@", deliLineAsString);
        return deliLineAsString;
    } else {
        return @"The line is currently empty.";
    }
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine
{
    [deliLine addObject:name];
}


- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine
{
    NSString *nextCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return nextCustomer;
}

@end
