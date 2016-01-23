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
    NSString *equal = @"The line is:\n";
    NSString *notEqual = @"The line is currently empty.";
    NSMutableArray *addToDeliLine = [NSMutableArray arrayWithArray:deliLine];
    
    
    if ([addToDeliLine count] == 0){
        return notEqual;
        
    }else {
        for (NSUInteger i = 0; i < [addToDeliLine count]; i++) {
            [addToDeliLine replaceObjectAtIndex:i withObject:[NSString stringWithFormat:@"%lu. %@\n", i+1, addToDeliLine[i]]];
        }
        NSString *customerQueue = [addToDeliLine componentsJoinedByString:@""];
        customerQueue = [customerQueue substringToIndex:[customerQueue length] - 1];
        return [NSString stringWithFormat:@"%@%@", equal, customerQueue];
    }
}
 




-(NSMutableArray *) addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
    return deliLine;
}



-(NSString *) serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *firstInLine = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return firstInLine;
}


@end

