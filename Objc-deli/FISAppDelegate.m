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
    NSString *deliLineResult;
    
    if (![deliLine count]) {
        deliLineResult = @"The line is currently empty.";
    } else {
        deliLineResult = @"The line is:";
        
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            deliLineResult = [deliLineResult stringByAppendingFormat:@"\n%lu. %@", i+1, deliLine[i]];
        }
    }
    
    return deliLineResult;
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
    
    return;
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *firstCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    
    return firstCustomer;
}

@end
