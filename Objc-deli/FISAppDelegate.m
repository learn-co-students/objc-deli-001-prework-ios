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
    
    NSString *customersInLine = @"The line is:";
    NSUInteger deliLineCount = [deliLine count];
    
    if (deliLineCount == 0) {
        customersInLine = @"The line is currently empty.";
    } else {
        for (NSUInteger i = 0; i < deliLineCount; i++) {
            NSUInteger customerNumber = i + 1;
            customersInLine = [customersInLine stringByAppendingFormat: @"\n%lu. %@", customerNumber, deliLine[i]];
        }
    }
    
    return customersInLine;
}

- addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    [deliLine addObject:name];
    
    return deliLine;
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *firstName = deliLine[0];
    
    [deliLine removeObjectAtIndex:0];
    
    return firstName;
}

@end
