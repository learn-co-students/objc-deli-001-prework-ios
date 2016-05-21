//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString*)stringWithDeliLine:(NSMutableArray*)deliLine {
    //@"The line is:\n1. Anita\n2. Alan\n3. Ada\n4. Aaron\n5. Alan"
    
    //Above will return an NSString after calling stringWithDeliLine, the NSMutableArray deliLine is the parameter.
    
    if ([deliLine count] == 0) { //stringWithDeliLine returns "The line is currently empty." if the count / size of the line is 0. Will not return "The line is currently empty." If the line is not empty (if there are customers.)
        return @"The line is currently empty.";
    }
    
    
    NSMutableString *mutableDeliLine = [NSMutableString string]; //Builds an empty NSMutableString called mutableDeliLine
    [mutableDeliLine appendString:@"The line is:"]; //This will activate mutable string and append "The line is:" (insert at the end of) to mutableDeliLine.
    
    for (NSInteger i=0; i< [deliLine count]; i++) { //Creating NSInterger set to 0; whatever point/customer "i" is at in the NSMutableArray "deliLine" add that person to the string "mutableDeliLine"; then increment "i" by one/the next person "i++" will run indefintely by adding +1 down the deliLine.
        
        NSString *nextCustomer = [NSString stringWithFormat:@"\n%lu. %@", (i+1), deliLine[i]]; //Makes a temporary NSString "nextCustomer" to add to the first string (mutableDeliLine) created (enters "\n" plus "%lu"=the postion in line (1, 2, 3, 4, 5, etc.), then a "."(this is just for formatting), then the corresponding name at the point called upon by the "i++" increment to add to the NSMutableString "mutableDeliLine" which has "the line is:" appended or attached as a suffix.
        
        [mutableDeliLine appendString:(NSString*)nextCustomer]; //Adds the temporary value of the NSString "nextCustomer" to the NSMutableString "mutableDeliLine" each time (appending in action here).
    }
    
    return mutableDeliLine; //Stops the method. "mutableDeliLine" is returned as an NSString. (it will contain all customers as one as one string)
}

-(NSMutableArray*)addName:(NSString*)name toDeliLine:(NSMutableArray*)deliLine { //The name of the method is addName:toDeliLine. It will return an NSMutableArray called "deliLine".
    
    [deliLine addObject:name]; //Is part of the NSMutableArray class that adds the object "name" to the NSMutableArray "deliLine". This method takes the NSString "name" and adds it to the NSMutableArray "deliLine".
    
    return deliLine; //Then returns "deliLine" with the NSString "name" now in it.
}

-(NSString*)serveNextCustomerInDeliLine:(NSMutableArray*)deliLine { //The method will return an NSString "serveNextCustomerInDeliLine"
    
    NSString *theFirstCustomer = deliLine[0]; //Temporary object "theFirstCustomer" is delcared as the first object/customer in the NSMutableArray "deliLine".
    
    [deliLine removeObjectAtIndex:0]; //Removes the first object/customer in the NSMutableArray "deliLine".
    return theFirstCustomer; //Returns the object/customer that was just removed from the NSMutableArray "deliLine" as an NSString.
}
@end



