//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    NSString *customerQueue = @"";
    
    if ([deliLine count] > 0) {
        
        customerQueue = @"The line is:";
        
        for (NSInteger i = 0; i < [deliLine count]; i++) {
            
            customerQueue = [customerQueue stringByAppendingFormat:@"\n%li. %@", i + 1, deliLine[i]];
        }
    }
    
    else {
        
        customerQueue = @"The line is currently empty.";
    }
    
    return customerQueue;
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
