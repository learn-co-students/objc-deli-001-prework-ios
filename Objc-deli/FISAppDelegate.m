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
- (NSString *) stringWithDeliLine:(NSArray *)deliLine;{
    if (deliLine.count == 0){
        NSString *empty = @"The line is currently empty.";
        return empty;
        
    }
    else {
        NSMutableString *deliLineString = [ @"The line is:" mutableCopy];
        for (NSUInteger i = 0; i < [deliLine count]; i++){
            [ deliLineString appendFormat: @"\n%lu.", i + 1];
            [deliLineString appendFormat: @" %@", deliLine[i] ];
        }
    return deliLineString;
    }
}


-(void) addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine; {
    [deliLine addObject:(name)];
}

-(NSString *) serveNextCustomerInDeliLine:(NSMutableArray *)deliLine; {
  
    NSString *nextCustomerInDeliLine= [ deliLine objectAtIndex:0];
    [ deliLine removeObjectAtIndex:0];
    
    return nextCustomerInDeliLine ;
    
    
    
}



@end
