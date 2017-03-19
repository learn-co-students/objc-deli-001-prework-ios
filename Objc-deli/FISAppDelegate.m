//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    NSArray *deliLine = @[@"Joe", @"Mark", @"Joe", @"Alan"];
    NSMutableArray *deliLineM = [deliLine mutableCopy];
    
    NSString *deliCustomers = [self stringWithDeliLine:deliLine];
    
    NSLog(@"%@", deliCustomers);
    
    [self addName:@"Alex" toDeliLine:deliLineM];
    
    NSLog(@"%@", deliLineM);
    
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    NSUInteger deliLineLength = [deliLine count];
    NSString *deliLineString = @"";
    
    NSMutableString *deliLineStringM = [deliLineString mutableCopy];
    
    
    if (deliLineLength == 0) {
        [deliLineStringM appendString:@"The line is currently empty."];
        return deliLineStringM;
    } else {
        
        [deliLineStringM appendString:@"The line is:\n"];
        for (NSUInteger i = 0; i < deliLineLength; i++) {
            
            NSUInteger positionInLine = i + 1;
            NSString *lineCustomer = deliLine[i];
            
            if (positionInLine == deliLineLength) {
                [deliLineStringM appendFormat:@"%li. %@", positionInLine, lineCustomer];
            } else {
                [deliLineStringM appendFormat:@"%li. %@\n", positionInLine, lineCustomer];
            }
            
        }
        return deliLineStringM;
    }
    
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    [deliLine addObject:name];
    
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {

    NSString *nextCustomer = [deliLine objectAtIndex:0];
    
    [deliLine removeObjectAtIndex:0];
    
    return nextCustomer;
    
}

@end
