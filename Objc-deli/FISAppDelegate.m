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
    NSString *line = @"The line is:";
    
    if ([deliLine count] == 0 ) {
        return @"The line is currently empty.";
    } else {
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            NSString *name = [NSString stringWithFormat:@"\n%lu. %@", i+1, deliLine[i]];
            line = [line stringByAppendingString:name];
        }
        
        return line;
        
    }
    
}

- (NSMutableArray *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
    return deliLine;
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *firstCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    
    return firstCustomer;
}

@end
