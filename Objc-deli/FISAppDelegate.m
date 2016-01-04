//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

//For the stringWithDeliLine function I wrote if-else statements.  The 'if' returns the string needed if the line is empty.  In the 'else' I made a 'for'loop to add each customers name in the deliLine array and a corresponding number to the string as it iterates.

- (NSString *) stringWithDeliLine:(NSArray *) deliLine
{
    if ([deliLine isEqual: @[]])
    {
        return @"The line is currently empty.";
    }
    else
    {
        
        NSString *deliString = @"The line is:";
        
        // In the body of the 'for' loop I called the stringWithFormat function to assemble the parts of the string as the 'for' loop iterated, including a static NSString @"The line is:", the integer (found by adding 1 to i), and the name of each customer in the deliLine array (for this I made a separate variable (customer) and got each one by calling the function objectAtIndex:i.
        
        for (NSUInteger i = 0; i < [deliLine count]; i++)
        {
            NSString *customerName = [deliLine objectAtIndex:i];
            deliString = [NSString stringWithFormat:@"%@\n%lu. %@", deliString ,i + 1, customerName];
            
        }
        
        return deliString;
    }
    
}

// In the addName:toDeliLine: function body I called the addObject function and took name as an argument adding it to the deliLine NSArray.

-(void) addName: (NSString *) name toDeliLine:(NSMutableArray *) deliLine
{
    [deliLine addObject:name];
    
    return;
}

// In the serveNextCustomerInDeliLine: function body I assigned the first object in the NSArray deliLine to a new variable deliString2.  I then used the function removeObjectAtIndex: to remove the object at index 0.  And returned this removed object.

-(NSString *) serveNextCustomerInDeliLine:(NSMutableArray *) deliLine
{
    
    NSString *deliString2 = [deliLine objectAtIndex:0];
    [deliLine removeObjectAtIndex:0];
    
    return deliString2;
}

@end
