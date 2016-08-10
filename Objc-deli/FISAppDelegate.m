//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSArray *deliLine = @[ @"Anita", @"Alan", @"Ada", @"Aaron", @"Alan" ];
    NSString *deliString = [self stringWithDeliLine:deliLine];
    NSLog(@"%@", deliString);
    
    NSArray *deliLine2 = @[ @"Joe", @"Mark" ];
    NSString *deliString2 = [self stringWithDeliLine:deliLine2];
    NSLog(@"%@", deliString2);
    
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine{
    NSMutableArray *deliLineM = [[NSMutableArray alloc] init];
    // if there are customers in line, create a string with their names.
    NSMutableString *deliString;
    deliString = [[NSMutableString alloc] init];
    
    if(deliLine == nil){
        [deliString appendString:@"The line is currently empty."];
    } else {
        // prefix
        [deliString appendString:@"The line is: "];
        // append the names
        for(NSUInteger i = 0; i < [deliLine count]; i++){
            NSInteger placeInLine = i+1;
            [deliString appendFormat:@"\n%li. %@", placeInLine, deliLine[i]];
            
            // add name to mutable array
            [self addName:deliLine[i] toDeliLine:deliLineM];
        }
        NSLog(@"Initial stste of the mutable array: %@", deliLineM);
    }
    NSString *updatedDeliLine = [self serveNextCustomerInDeliLine:deliLineM];
    NSLog(@"%@ was the first person served.", updatedDeliLine);
    return deliString;
}
- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    [deliLine addObject:name];
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    NSString *customerServed = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    NSLog(@"Final state of the mutable array: %@", deliLine);
    return customerServed;
}

@end
