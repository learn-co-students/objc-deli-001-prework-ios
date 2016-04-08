//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

//returns a string that shows the line
- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    if (![deliLine count]) {
        return @"The line is currently empty.";
    }
    NSMutableString *deliLineString = [[NSMutableString alloc] initWithString:@"The line is:"];
    for (NSUInteger i =0; i < [deliLine count]; i++) {
        NSUInteger queueNumber = i + 1;
        [deliLineString appendFormat:@"\n%lu. %@", queueNumber, deliLine[i]];
    }
    return deliLineString;
}


//adds a name to the line
- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
}


//removes the first customer in the line to be served
- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *nextCustomerInLine = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return nextCustomerInLine;
}

@end
