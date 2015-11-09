//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
    
}

- (NSString *) stringWithDeliLine: (NSArray *) deliLine {
    NSMutableString *names = [[NSMutableString alloc] init];
    if ([deliLine count] == 0){
        [names appendString: @"The line is currently empty."];
    }
    else {
        [names appendString: (@"The line is:")];
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            [names appendFormat:@"\n%lu. %@", (i+1), deliLine[i]];
        }
    }
    return names;
}

- addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    [deliLine addObject:name];
    return deliLine;
}



- (NSString *) serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *nextCoustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    //if ([deliLine count] == 0){
      //  nextCoustomer = @"The line is currently empty.";
    //}
    //else {
      //  nextCoustomer = deliLine[0];
        //}
    return nextCoustomer;
    }

@end
