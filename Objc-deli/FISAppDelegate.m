//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

//Return formatted string listing customers in deliLine, or message if line is empty.
- (NSString *)stringWithDeliLine:(NSArray *)deliLine{
    
    NSUInteger numCustomers = [deliLine count];
    
    if(numCustomers == 0){
        return @"The line is currently empty.";
    }
    //else
    
    NSMutableString *line = [[NSMutableString alloc] init];
    
    [line appendString: @"The line is:"];
    
    for(NSUInteger i = 0; i < numCustomers; i++){
        [line appendFormat:@"\n%lu. %@", i+1, deliLine[i]];
        
    }
    
    return line;
}

//Add customer name to deliLine.
- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    [deliLine addObject:name];
}

//Pop first customer off of deliLine and return customer name as string.
- (NSString *)serveNextCustomerInDeliLine: (NSMutableArray *)deliLine{
    if([deliLine count] == 0){
        return @"The line is currently empty.";
    }
    //else
    
    NSString * ret = deliLine[0];
    
    [deliLine removeObjectAtIndex:0];
    
    return ret;
}

@end
