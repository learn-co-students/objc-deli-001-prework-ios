//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}
/**
 stringWithDeliLine takes an NSArray and returns an NSString.
 This method is meant to display a string that reads empty if no one is in line.
 And if someone or many people are in line, from integers 1 and up (as many as in the line) the method with return the name and number of the people in the deli line.
 */
- (NSString *)stringWithDeliLine:(NSArray *)deliLine{
    NSString *emptyCase = @"The line is currently empty.";
    if ([deliLine count] == 0 ) {
        return emptyCase;
    }
    else {
        NSString *theLineContains =@"The line is: /n";
        for (NSUInteger i = 0; i < [deliLine count] ; i++) {
            NSInteger *numberInLine = (i + 1);
            NSMutableString *componentsOfTheLine = (@"%lu.", @"%@", numberInLine, deliLine[i]);
            theLineContains = [NSString stringWithString:componentsOfTheLine];
            
            NSLog(theLineContains); //just to see how and if it works
            
            return theLineContains;
            
        }
        
    }
return nil; // the outside case, in the case that nothing else works.
}

/**
 addName & toDeliLine (together one method) return nothing. They simply add to the mutable array (non -static) that contains the line's information.
 Build the method addName:toDeliLine: method to add the submitted name to the deliLine . Since the deliLine argument is mutable, this method does not need to return an array; the array argument is modified in-place.
 
 
 I WILL ADD NEW NAMES TO THE END OF THE LINE.
 */

- (void)addName:(NSString *)name
     toDeliLine:(NSMutableArray *)deliLine{

    for (NSUInteger i = 0; i < [deliLine count]; i ++) {
        //I don't know if I need this loop. Will figure out.
    }
    return;
}


/**
 Build the method serveNextCustomerInDeliLine: method. Save the first name in the deliLine to an NSString object within the method. Then remove the first object from the deliLine and return the name you removed. Hint: Using removeObject: could be problematic for you. There's another method on NSMutableArray that will let you specify an object to remove by array index.
 */
- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    return nil;
}

@end
