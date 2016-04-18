//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

NSString *empty = @"The line is currently empty.";

-(NSString *) stringWithDeliLine:(NSArray *) deliLine{
    NSString *occupiedLine = @"The line is:";
    if ([deliLine isEqual: @[]]) {
        return empty;
    } else {
        for (NSUInteger i = 0; i < [deliLine count]; i++){
            NSUInteger position = i + 1;
            NSString *stringWithDeliLine  = [NSString stringWithFormat: @"\n%lu. %@" , position , deliLine[i]];
            occupiedLine = [occupiedLine stringByAppendingString:stringWithDeliLine];
            
        }
     return occupiedLine;
    }
    
  }


-(void)addName: (NSString *)deliName toDeliLine: (NSMutableArray *) deliLine;{
    [deliLine addObject: deliName];
    return;
}

-(NSString *) serveNextCustomerInDeliLine:(NSMutableArray *) deliLine;{
    NSString *nameCalled = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return nameCalled;
}




@end
