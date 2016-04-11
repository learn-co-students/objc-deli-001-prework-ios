//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
   
    if ([deliLine count] == 0) {
        NSString *noLine = @"The line is currently empty.";
        return noLine;
    }
   
     // If there are no customers in the deliLine, the message "The line is currently empty." will be shown.
    
    else {
        NSMutableString *yesLine = [@"The line is:" mutableCopy];
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            [ yesLine appendFormat:@"\n%lu. ", i + 1];
            [yesLine appendFormat:@"%@", deliLine[i]];
        }
        return yesLine;
    }
    
    // Defining method (NSString *)stringWithDeliLine:(NSArray *)deliLine
    // When there is a line, the message "The line is: <#number#> <#name#>" This method adds the message and number while next method will add name.
    // Format Specifiers \n & %lu allow for the number to change as well as display a NSUInteger. yesLine String appended to deliLine + 1.
    // yesLine String appended to deliLine's current customer.
    
    }

    - (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine  {
        [deliLine addObject:name];
}

// Defining method (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine
// This method adds the person's name to the message "The line is: <#number#> <#name#>"

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *next = [deliLine objectAtIndex:0];
    [deliLine removeObjectAtIndex:0];
    
  return next;
}

// Defining method (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine
//

/*
 
 *  Define your methods here!
 
 */

@end
