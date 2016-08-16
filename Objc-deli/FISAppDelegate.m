//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}



-(NSString*)stringWithDeliLine:(NSArray*)deliLine {
    NSString *theLine = @"The line is:";
    NSMutableString *deliLine2 = [theLine mutableCopy];
    if ([deliLine count] == 0 ){
        NSString *empty = @"The line is currently empty.";
        return empty;
    } else {
            for (NSUInteger i=0; i < [deliLine count]; i++) {
                NSUInteger position = i+1;
                NSMutableString *deliLine3 = [NSMutableString stringWithFormat: @"\n%lu. %@" ,position , deliLine[i]];
                [deliLine2 appendString:deliLine3];
            }
        
    }
    return deliLine2;}


-(void)addName: (NSString *)deliName toDeliLine: (NSMutableArray *) deliLine;{
    [deliLine addObject: deliName];
    return;
}

-(NSString*)serveNextCustomerInDeliLine:(NSMutableArray*)deliLine {
    NSString *nextCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return nextCustomer;
    
}

            

    @end
