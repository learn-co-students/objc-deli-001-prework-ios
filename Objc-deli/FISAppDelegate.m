//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Overrid point for customization after application launch.
   
    
    
    
    
    
    return YES;
}
/*
 
 *  Define your methods here!
 
 */
-(NSString *)stringWithDeliLine:(NSArray*)deliLine {

    NSMutableString *mDeliLine = [[NSMutableString alloc] init];
    
    if ([deliLine count] == 0) {
        
        NSString *noLine = @"The line is currently empty";
        
        return noLine;
        
    } else
        
        [mDeliLine appendString: @"The line is: \n"];
        
    for (NSUInteger i = 0; i < [deliLine count]; i++) {
            
            NSUInteger numberInLine = i + 1;
            
            [mDeliLine appendFormat:@"\n%lu. %@", numberInLine, deliLine[i]];
             
    }
        
    return mDeliLine;
}
    


-(void *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    
    [deliLine addObject:name];
    return nil;
}

-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *nextCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    
    return nextCustomer;
}

@end
