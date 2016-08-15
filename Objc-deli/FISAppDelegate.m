//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *) stringWithDeliLine: (NSArray *) deliLine
{
    NSString *theLineIs = @"The line is:";
    NSMutableString *deliLineB = [theLineIs mutableCopy];
    
    if ([deliLine count] ==0)
    {NSString *emptyLine = @"The line is currently empty.";
        return emptyLine;}
    else {for (NSUInteger i=0; i< [deliLine count]; i++)
    {NSInteger queueNumber = i+1;
              NSMutableString *deliLineC = [NSMutableString stringWithFormat:  @"\n%li. %@", queueNumber, deliLine[i]];
              [deliLineB appendString: deliLineC];
        
          }
        return deliLineB;}
}
- (void) addName:(NSString *) name toDeliLine: (NSMutableArray *)deliLine
{[deliLine addObject:name];
}
- (NSString *) serveNextCustomerInDeliLine: (NSMutableArray *) deliLine
{NSString *firstName = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return firstName;
}
/*
 
 *  Define your methods here!
 
 */

@end
