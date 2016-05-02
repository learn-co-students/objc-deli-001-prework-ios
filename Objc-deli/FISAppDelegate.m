//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}
-(NSString *) stringWithDeliLine:(NSArray *)deliLine {
    
    NSMutableString *lineStatus = [[NSMutableString alloc]init];
    
    if (deliLine.count == 0) {
        [lineStatus appendString:@"The line is empty"];
        return [NSString stringWithString:lineStatus];
    }
    [lineStatus appendString:@"The line is:"];
    for (NSUInteger i = 1; i< deliLine.count; i++) {
        //this is because the customer's number starts at 1, not 0
        NSUInteger customerNumber = i + 1;
        [lineStatus appendFormat:@"\n%lu. %@", customerNumber, deliLine[i]];
    }
    return lineStatus;
}

-(void) addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
}

-(NSString *) serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *nextInLine = [deliLine firstObject];
    [deliLine removeObjectAtIndex:0];
    return nextInLine;
}

/*

//return a string from an array
- (NSString *) stringWithDeliLine:(NSArray *) deliLine; {
    
    NSMutableString *lineStatus = [NSMutableString new];
    
    if (deliLine.count == 0) {
        [lineStatus appendString:@"The line is currently empty."];
        return [NSString stringWithString:lineStatus];
    }
    [lineStatus appendString:@"The line is:"];
    for (NSUInteger i = 0; i < deliLine.count; i++) {
        NSUInteger customerNumber = i + 1;
        [lineStatus appendFormat:@"\n%lu. %@",customerNumber,deliLine[i]];
    }
    return lineStatus;
}

- (void) addName:(NSString *) name toDeliLine:(NSMutableArray*) deliLine; {
    [deliLine addObject:name];
}

- (NSString *) serveNextCustomerInDeliLine:(NSMutableArray *) deliLine; {
    NSString *nextInLine = [deliLine firstObject];
    [deliLine removeObjectAtIndex:0];
    return nextInLine;
}

 
 *  Define your methods here!
 
 */

@end



//
//for (int i = 0; i < [items count]; i++) {
//    NSString *item = [items objectAtIndex:i];
//    NSLog(@"%@", item);
//}
//
//
//
//// For every item in the items array ...
//for (NSString *item in items) {
//    // Log the description of item
//    NSLog(@"%@", item);
//}
