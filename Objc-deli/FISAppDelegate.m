//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    NSMutableString *customerListString = [NSMutableString stringWithString:@"The line is:"];
    
    if (deliLine.count == 0) {
        return @"The line is currently empty.";
    }
    
    for (int i = 0; i < deliLine.count; i++) {
        NSString *customer = [NSString stringWithFormat:@"\n%d. %@", i+1, deliLine[i]];
        [customerListString appendString:customer];
    }
    
    return customerListString;
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    if (deliLine != nil) {
        [deliLine addObject:name];
    }
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *firstCustomerName = [deliLine objectAtIndex:0];
    [deliLine removeObjectAtIndex:0];
    
    return firstCustomerName;
}

@end
