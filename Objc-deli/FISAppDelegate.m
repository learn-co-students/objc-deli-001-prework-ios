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



- (NSString *)stringWithDeliLine:(NSArray *)deliLine; {
    
    NSString *lineResult;
    
    if (![deliLine count]){
        lineResult = @"This line is currently empty.";
    } else {
        lineResult = @"The line is:";
        
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
    lineResult = [lineResult stringByAppendingFormat:@"n%lu. %@", i+1, deliLine[i]];
            
        }
    }
    
    return lineResult;
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine; {
    
    [deliLine addObject:name];
    
    
    return;
}

- (NSString *)serveNextCustomerInDeliLine: (NSMutableArray *)deliLine; {
    
    BOOL customerServed = NO;
    NSString *firstcustomer;
    
    
    for (NSUInteger i = 0; i < [deliLine count]&&!customerServed; i++) {
        if (deliLine[i]) {
            customerServed = YES;
            firstcustomer = deliLine[i];
            [deliLine removeObjectAtIndex:i];
            
        }
    }
    
    return firstcustomer;
}


@end
