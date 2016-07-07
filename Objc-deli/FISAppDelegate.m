//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}



- (NSString *)stringWithDeliLine: (NSMutableArray *)deliLine {

    NSUInteger *lineNum = 0;
    NSMutableString *result = [[NSMutableString alloc]init];

    
    if (deliLine.count == 0) {
        
        NSString *empty = [NSString stringWithFormat:@"The line is currently empty."];
        [result appendString:empty];
        return result;
        
    } else {
    
        [result appendString:@"The line is:"];
        
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
        
            lineNum = i+1;
            [result appendFormat:@"\n%lu. %@", lineNum, deliLine[i]];
            
            }
    }
    
    return result;
}

- (void) addName:(NSString *)name toDeliLine: (NSMutableArray *)deliLine {
    
    [deliLine addObject:name];
    
}

- (NSString *)serveNextCustomerInDeliLine: (NSMutableArray *)deliLine {
    
    NSString *nextCustomer = [deliLine firstObject];
    [deliLine removeObjectAtIndex:0];
    return nextCustomer;
    
}


@end
