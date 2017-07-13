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
    
    NSString *tobereturned = @"The line is:";
    
    if (![deliLine count]) {
    return @"The line is currently empty.";
    }
    else {
        for (NSUInteger i =0; i<[deliLine count]; i++) {
            tobereturned = [tobereturned stringByAppendingFormat:@"\n%u. %@", i+1, deliLine[i]];
        }
    }
    return tobereturned;
}



- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    [deliLine addObject:name];
    
    return;
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *first = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    
    return first;

}

@end
