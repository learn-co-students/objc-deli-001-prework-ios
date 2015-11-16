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

-(NSString *)stringWithDeliLine:(NSMutableArray *)deliLine {
    NSString * customerLine =@"The line is: ";
    if ([deliLine count] ==0 ){ // double equal sign denotes "is this equal to?"
        return @"The line is currently empty.";
    }
    else {
        for(NSInteger i=0; i< [deliLine count]; i++) {
            NSString * customerNames=[NSString stringWithFormat:@"\n%lu. %@", i+1, deliLine[i]]; // space between %lu %@
            customerLine=[customerLine stringByAppendingString:customerNames];
        }
        return customerLine;
    }
}

    -(NSMutableArray *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
       [deliLine addObject: name];
        return deliLine; // mutable method
    }
    
    -(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
        NSString * firstCustomer = deliLine[0];
        [deliLine removeObjectAtIndex:0];
        return firstCustomer;
    }

@end
