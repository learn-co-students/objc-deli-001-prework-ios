//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    NSMutableString *deliLineAsString = [[NSMutableString alloc] initWithString:@"The line is:"];
    NSUInteger serveCounter;
    
    if ([deliLine count] == 0) {
        return @"The line is currently empty.";
    }
    
    for (NSUInteger i = 0; i < [deliLine count]; i++) {
        serveCounter = i + 1;
        [deliLineAsString appendFormat:@"\n%lu. %@", (unsigned long)serveCounter, deliLine[i]];
    }
    
    return deliLineAsString;
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *nextCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    
    return nextCustomer;
}

@end
