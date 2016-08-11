//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  
    
    
   // NSArray * deliLine = @[ @"Jon", @"Ron"];
    
    NSArray * deliLine = @[];

    
   // NSString * message = [[NSString alloc]init];
    
    NSString * message = [self stringWithDeliLine:(NSArray *)deliLine];
    
   NSLog(@"%@", message);
    
    
    
    
    
    
    
    
    
    

    
    
    // Override point for customization after application launch.
    return YES;
}

/*
 
 *  Define your methods here!
 
 */


///How long is the line?


- (NSString *) stringWithDeliLine:(NSArray *)deliLine;{
    
    if ([deliLine count] == 0){
        return @"The line is currently empty.";
        
        
    }
    
    NSMutableString *theLine = [[NSMutableString alloc]initWithString:@"The line is:"];

    
    for (NSUInteger i = 0; i < [deliLine count]; i++) {
        [theLine appendFormat:@"\n%lu. %@",i+1,deliLine[i]];
    }
    
    return theLine;
    
    
    }
    

/// Next customer
    


- (NSString *) serveNextCustomerInDeliLine:(NSMutableArray *)deliLine;{
    
    NSString *nextCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    
    return nextCustomer;
}

// Add name

- (void) addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine;{
    
    
     [deliLine addObject:name];
    
    
}


@end
