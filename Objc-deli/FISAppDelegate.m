//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    NSMutableString *line = [@"" mutableCopy];
    if ([deliLine count] == 0) {
        [line appendFormat:@"The line is currently empty."];
    }
    else {
        [line appendString:@"The line is:"];
        for(NSUInteger i = 0; i < [deliLine count]; i++) {
            [line appendFormat:@"\n%lu. %@", i+1, deliLine[i]];
        }
    }
    return line;
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    if([deliLine count] == 0) {
        return @"No one to serve: deli line is empty.";
    }
    else {
        NSString *nextCustomer = deliLine[0];
        [deliLine removeObjectAtIndex:0];
        return nextCustomer;
    }
}

@end