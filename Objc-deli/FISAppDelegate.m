//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

//describe(@"stringWithDeliLine:", ^{
//    it(@"returns the customers in line as a string", ^{
//        expect(deliString).to.equal(@"The line is:\n1. Anita\n2. Alan\n3. Ada\n4. Aaron\n5. Alan");
//        expect(deliString2).to.equal(@"The line is:\n1. Joe\n2. Mark");
//    });
//    
//    it(@"explains if the line is empty", ^{
//        [deliLine removeAllObjects];
//        deliString = [appDelegate stringWithDeliLine:deliLine];
//        expect(deliString).to.equal(@"The line is currently empty.");

- (NSString *)stringWithDeliLine: (NSArray *)deliLine {
    
    NSMutableString *string = [NSMutableString string];
    NSUInteger i = 0;
    
    if (![deliLine count]) {
        return @"The line is currently empty.";
    }
    
    while (i < [deliLine count]) {
        i = i + 1;
        NSString *person = deliLine[i - 1];
        [string appendFormat:@"\n%lu. %@", (unsigned long)i, person];
    }
    
    [string insertString:@"The line is:" atIndex:0];
    
    return string;
}

- (void)addName: (NSString *)name toDeliLine: (NSMutableArray *)deliLine {
    
    [deliLine addObject:name];

}

- (NSString *)serveNextCustomerInDeliLine: (NSMutableArray *)deliLine {
    
    //store first customer in an array
    NSString *firstCustomerInLine = deliLine[0];
    
    [deliLine removeObjectAtIndex: 0];
    
    return firstCustomerInLine;
}

@end
