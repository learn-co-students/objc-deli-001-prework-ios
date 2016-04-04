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
-(NSString *)stringWithDeliLine:(NSArray *)deliLine{
    NSString *message = @"";
    NSUInteger placeInLine = 0;
    if (deliLine.count < 1) {
        message = @"The line is currently empty.";
    }else {
        message = @"The line is:";
        for (NSUInteger i = 0; i<deliLine.count; i++) {
            placeInLine = i+1; //or placeInLine++
            message = [message stringByAppendingFormat:@"\n%li. %@", placeInLine, deliLine[i]]; //overwrites to ONLY LAST VALUE?
        }
    }
    
    
    return message;
}

-(void)addName:(NSString *)name toDeliLine:(NSMutableArray*)deliLine{
    [deliLine addObject:name];
}

-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
  //  if (deliLine.count > 0)
    NSString *customerToBeServed = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return customerToBeServed;
}

@end
