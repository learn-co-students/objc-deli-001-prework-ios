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



-(NSString *)stringWithDeliLine: (NSArray *)deliLine {
    NSString *stringWithDeliLine = @"";
        if([deliLine count] == 0) {
            return stringWithDeliLine = @"The line is currently empty.";
        }
    
        else {
            NSMutableString *stringWithDeliLine = [@"The line is:" mutableCopy];
            for (NSUInteger i = 0; i<[deliLine count]; i++) {
                [stringWithDeliLine appendFormat:@"\n%lu.", i+1];
                [stringWithDeliLine appendFormat:@" %@", deliLine[i]];
            }
            return stringWithDeliLine;
        }
}


-(void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject: name];
}


-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *nextCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return nextCustomer;
}



@end
