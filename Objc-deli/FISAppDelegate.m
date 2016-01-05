//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    if ([deliLine count] == 0) return @"The line is currently empty.";
    
    NSMutableString *string = [@"The line is:" mutableCopy];
    for (int i = 0; i < [deliLine count]; i++) {
        [string appendFormat:@"\n%i. %@", i+1, deliLine[i]];
    }
    return string;
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    return nil;
}

@end
