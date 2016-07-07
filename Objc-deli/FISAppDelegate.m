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

-(NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    NSString *deliGreetingWithLine = @"The line is:";
//    NSString *deliGreetingNoLine = @"The line is currently empty.";
//    NSMutableArray *customersInDeliLine = [[NSMutableArray alloc] init];
    
    if ( [deliLine count] == 0) {
        return @"The line is currently empty.";
    }

    
    for (NSUInteger i=0; i < [deliLine count]; i++) {
    
        deliGreetingWithLine = [deliGreetingWithLine stringByAppendingFormat:@"\n%lu. %@", i + 1, deliLine[i]];
        // [customersInDeliLine addObject: deliLine];
    }
    
    return deliGreetingWithLine;
    

        }



-(void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    [deliLine addObject: name];
    
    
    return;
    
}


-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *firstPersonInLine = [deliLine objectAtIndex:0];
    [deliLine removeObjectAtIndex:0];
    return firstPersonInLine;
    
    
}
@end
