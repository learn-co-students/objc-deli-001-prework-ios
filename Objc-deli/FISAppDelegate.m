//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)queue {
    if ([queue count] == 0) {
        return @"The line is currently empty.";
    } else {
        NSMutableString * result = [[NSMutableString alloc] initWithString:@"The line is:"];
        for (NSUInteger i = 0; i < [queue count]; i++) {
            [result appendFormat:@"\n%lu. %@", (unsigned long) i + 1, (NSMutableString *) queue[i]];
        }
        return result;
    }
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString* customer = (NSString*) [deliLine objectAtIndex:0];
    [deliLine removeObjectAtIndex:0];
    return customer;
}
@end
