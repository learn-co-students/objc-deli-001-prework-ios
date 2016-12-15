//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine{
    
    if ([deliLine count] == 0) {
        return @"The line is currently empty.";
    }
    
    NSMutableString *queue = [@"The line is:" mutableCopy];
    
    for (NSUInteger i = 0; i < [deliLine count]; i++) {
        [queue appendFormat:@"\n%lu. %@", i + 1, deliLine[i]];
    }
    
    return queue;
    
}

- (id)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    
    deliLine[[deliLine count]] = name;
    
    return nil;
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    
    NSString *nextCustomerName = deliLine[0];
    
    [deliLine removeObjectAtIndex:0];
    
    return nextCustomerName;
}

@end
