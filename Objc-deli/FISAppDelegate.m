//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    NSLog(@"Hello, world!");
    
    return YES;
}

/*
 
 *  Define your methods here!
 
    deliLine = [NSMutableArray alloc] initWithArray: @[@"Anita", @"Ada", @"Aaron", @"Alan"];
    deliLine2 = [NSMutualbeArray alloc] initWithArray: @[@"Joe", @"Mark"];
 
    * NSString deliString;
    * NSString deliString2;
 
    * NSString stringWithDeliLine (""The line is currently empty.");
    * NSString stringWithDeliLine (The line is: \n1. Anita, \n2. Mary, \n3. Amy, \n4. Carol");
    * NSString stringWithDeliLine2 ("The line is: \n1. Joe, \n2. Mark");
 
    * NSString serveNextCustomerInLine;
 
 
 */

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    if (!deliLine.count) {
        return @"The line is currently empty.";
    }
    
    NSMutableString *result = [[NSMutableString alloc] initWithString:@"The line is:"];
    for (int i = 0; i < deliLine.count; i++) {
        NSString *name = deliLine[i];
        
        [result appendFormat:@"\n%d. %@", i+1, name];
    }
    
    return result;
}


- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *firstName = deliLine.firstObject;
    [deliLine removeObjectAtIndex:0];
    
    return firstName;
}

@end
