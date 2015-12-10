//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}





- (NSString *) stringWithDeliLine:(NSArray *)deliLine {

    NSString *line= @"The line is";
    // NSMutableArray *customers = [[NSMutableArray alloc]init];
    
    if ( deliLine.count == 0 ) {
        line = @"The line is currently empty.";
    } else {
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            
            NSString *customerstring = [NSString stringWithFormat:@"%lu %@ \n", i+1, deliLine[i]];
            line = [NSString stringWithFormat:@"%@ %@", line, customerstring];
        }
    }
        return line;
        
    }



- (void) addname: (NSString *) name toDeliLine:(NSMutableArray *) deliLine {
    [deliLine addObject: name];
    
    
}




    

- (NSString *) serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
        NSString *nextCustomer = deliLine[0];
        [deliLine removeObjectAtIndex:0];
    
        return nextCustomer;
    
    }


@end
