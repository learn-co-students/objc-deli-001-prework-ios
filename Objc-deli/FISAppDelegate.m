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



- (NSString *)stringWithDeliLine:(NSMutableArray *)deliLine; {
    
    NSMutableString *mDeli = [[NSMutableString alloc] init];
    
    if ([deliLine count] == 0) {
        
        [mDeli appendString:@"The line is currently empty."];
        
        return [NSString stringWithString:mDeli];
        
    }
    
    [mDeli appendString:@"The line is:"];
    
    for (NSUInteger i = 0; i < [deliLine count]; i ++) {
        
        NSUInteger lineNumber = i + 1;
        
        [mDeli appendFormat:@"\n%lu. %@", lineNumber, deliLine[i]];
    }
 
    
    return [NSString stringWithString:mDeli];
}


        
        
    
- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine; {
    
    [deliLine addObject:name];
    
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine; {
    
    NSString *nextCustomer = deliLine [0];
    
    [deliLine removeObjectAtIndex:0];
    
    return nextCustomer;
}
@end
