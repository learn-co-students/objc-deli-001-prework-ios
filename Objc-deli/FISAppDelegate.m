//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    if ([deliLine count] > 0) {
        NSMutableString *queueWithNumbersAndNames = [@"The line is:" mutableCopy];
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            [queueWithNumbersAndNames appendFormat:@"\n%lu. %@", i + 1, deliLine[i]];
        }
        return [NSString stringWithString:queueWithNumbersAndNames];
        
    } else {
        return @"The line is currently empty.";
    }
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    [deliLine addObject:name];
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *firstPersonInLine = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    
    return firstPersonInLine;
}

@end