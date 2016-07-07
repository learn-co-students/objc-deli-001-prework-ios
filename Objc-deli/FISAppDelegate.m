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

- (NSString *) stringWithDeliLine: (NSArray *)deliLine{
    if ([deliLine count] == 0) {
        return @"The line is currently empty.";
    }
    else{
        NSMutableString *deliLineStr = [NSMutableString stringWithString:@"The line is:\n"];
        NSUInteger counter = 1;
        for (NSString *customer in deliLine) {
            if (counter == [deliLine count]) {
                [deliLineStr appendFormat:@"%ld. %@", counter, customer];
            }
            else{
                [deliLineStr appendFormat:@"%ld. %@\n", counter, customer];
            }
            counter++;
        }
        NSLog(@"Delistring is: %@", deliLineStr);
        return deliLineStr;
    }
}

- (void) addName: (NSString *)name toDeliLine: (NSMutableArray *)deliLine{
    [deliLine addObject:name];
}

- (NSString *) serveNextCustomerInDeliLine: (NSMutableArray *)deliLine{
    if ([deliLine count] != 0) {
        NSString *firstInLine = deliLine[0];
        [deliLine removeObjectAtIndex:0];
        return firstInLine;
    }
    else{
        return nil;
    }
}


@end
