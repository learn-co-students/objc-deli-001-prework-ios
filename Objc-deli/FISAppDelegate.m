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

- (NSString *)stringWithDeliLine:(NSMutableArray *)deliLine {
    if ([deliLine count] == 0) {
        
        return @"The line is currently empty.";
    }
    
    NSMutableString *mutableDeliLine = [NSMutableString string];
    [mutableDeliLine appendString:@"The line is:"];
    for (NSInteger i = 0; i < [deliLine count]; i++) {
        NSString *newCustomer = [NSString stringWithFormat:@"\n%lu. %@", (i + 1), deliLine[i]];
        [mutableDeliLine appendString:(NSString *)newCustomer];
    }
    return mutableDeliLine;
}

- (NSMutableArray *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
    
    return deliLine;
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *theFirstCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    
    return theFirstCustomer;
}

@end
