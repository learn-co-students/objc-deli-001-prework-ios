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
    
    if( [deliLine count] == 0 ) {
        return @"The line is currently empty.";
    }
    
    NSMutableArray *formattedDeliLine = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [deliLine count]; i++) {
        formattedDeliLine[i] = [NSString stringWithFormat:@"%lu. %@", i+1, deliLine[i]];
    }
    
    NSMutableString *deliLineString = [@"The line is:\n" mutableCopy];
    [deliLineString appendString:[formattedDeliLine componentsJoinedByString:@"\n"]];
    
    return deliLineString;
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
