//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

// Objectives:
// 1. Write custom methods that take arguments and return results.
// 2. Use a method as a helper method.
// 3. Read and run unit tests to check your work.

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

/*
 
 *  Define your methods here!
 
 */

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    NSUInteger peopleInDeliLine = [deliLine count];
    
    if (peopleInDeliLine == 0){
        
        NSString *emptyLine = @"The line is currently empty.";
        return emptyLine;
    } else {
        
        NSString *theLineIs = @"The line is:";
        NSMutableString *peopleList = [[NSMutableString alloc]init];
        [peopleList appendFormat:@"%@",theLineIs];
        for (NSUInteger i=0; i<[deliLine count]; i++) {
            NSString *peopleInLine = deliLine[i];
            NSMutableString *list = [@"" mutableCopy];
            [list appendFormat:@"\n%lu. %@", i+1, peopleInLine];
            [peopleList appendFormat:@"%@",list];
        }
        return peopleList;
    }
    
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    [deliLine addObject:name];
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *firstName = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return firstName;
}


@end
