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
    
    NSString *lineList = @"The line is:";
    
    if([deliLine count] == 0){
        return @"The line is currently empty.";
    }
    else{
        for(NSUInteger i = 0; i < [deliLine count]; i++){
            NSUInteger placeInLine = i + 1;
            lineList = [lineList stringByAppendingFormat:@"\n%lu. %@", placeInLine, deliLine[i]];
        }
        
        return lineList;
    }
}

-(void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    [deliLine addObject:name];
    
}
-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    
    NSString *nextToServe = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return nextToServe;
}


@end
