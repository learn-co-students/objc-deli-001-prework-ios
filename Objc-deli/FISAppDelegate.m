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

-(NSString *) stringWithDeliLine: (NSArray *)deliLine {
    
    NSString *result=@"";
    
    if ([deliLine count]==0) {
        result = [result stringByAppendingString:@"The line is currently empty."];
        return result;
    }
    
    else {
        result = [result stringByAppendingString:@"The line is:"];
        for (NSUInteger i=0;i<[deliLine count];i++) {
            result = [result stringByAppendingFormat:@"\n%li. %@",i+1,deliLine[i]];
        }
        return result;
    }
    
}

-(void) addName:(NSString *)name toDeliLine:(NSMutableArray *) deliLine {
    [deliLine addObject:name];
}

-(NSString *) serveNextCustomerInDeliLine: (NSMutableArray *) deliLine {
    
    NSString *result=deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return result;
}

@end
