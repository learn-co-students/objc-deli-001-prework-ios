//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine{
    NSString *emptyLine = @"The line is currently empty";
    NSString *busyLine = @"The line is:";
    if([deliLine count] == 0){
        return emptyLine;
    } else {
        for(NSInteger i = 0; i < [deliLine count]; i++){
            NSString * customers = [NSString stringWithFormat:@"\n%lu. %@", i+1, deliLine[i]];
            busyLine = [busyLine stringByAppendingString:customers];
        }
        return busyLine;
    }
}

- (NSString *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    return nil;
}
- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    return nil;
}

@end
