//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
   // NSString *customer =@[@"Anita", @"Alan", @"Ada", @"Aaron", @"Alan"];
    
   // NSString *strreturn =[self stringWithDeliLine:customer];
    
    return YES;
    
}

// ********
// NSString *str1 = @"racecar";
// NSMutableString *str2 = [[NSMutableString alloc] init];
// NSInteger strLength = [str1 length]-1;
// for (NSInteger i=strLength; i>=0; i--)
// {
//     [str2 appendString:[NSString stringWithFormat:@"%C",[str1 characterAtIndex:i]]];
    
// }
// if ([str1 isEqual:str2])
// {
 //    NSLog(@"str %@ is palindrome",str1);
    
 //    ***************

// deliLine = [[NSMutableArray alloc] initWithArray:@[@"Anita", @"Alan", @"Ada", @"Aaron", @"Alan"] ];
// deliLine2 = [[NSMutableArray alloc] initWithArray:@[@"Charles",@"Magnus"]];
//
//describe(@"stringWithDeliLine:", ^{
  //  it(@"returns the customers in line as a string", ^{
    //    expect(deliString).to.equal(@"The line is:\n1. Anita\n2. Alan\n3. Ada\n4. Aaron\n5. Alan");
      //  expect(deliString2).to.equal(@"The line is:\n1. Joe\n2. Mark");
  //  });

- (NSString*)stringWithDeliLine:(NSMutableArray*)deliLine { // Will return an NSString and is called stringWithDeliLine, the NSMutableArray deliLine is the parameter
    //@"The line is:\n1. Anita\n2. Alan\n3. Ada\n4. Aaron\n5. Alan"
    
    if ([deliLine count] == 0) { //returns the line is empty if line is empty
        return @"The line is currently empty.";
    }
    
    NSMutableString *mutableDeliLine = [NSMutableString string]; // builds an empty mutable string
    [mutableDeliLine appendString:@"The line is:"]; // this will activate mutable string
    
    for (NSInteger i=0; i< [deliLine count]; i++) { // creating NSInterger set to 0; whatever point/customer "i" is at in the deliLine add that person to the string; then increment "i" by one/the next person (i++) - will run indefintely by adding +1 down the deliLine.
        NSString *nextCustomer = [NSString stringWithFormat:@"\n%lu. %@", (i+1), deliLine[i]]; //makes a temporary string to add to the first string created (enters the number in line", then a ".", then the name to add to the string.
        [mutableDeliLine appendString:(NSString*)nextCustomer]; //adds the temporary value to the string each time (appending is happening here)
    }
    
    return mutableDeliLine; // stops the method. mutableDeliLine is an NSString
    
}

-(NSMutableArray*)addName:(NSString*)name toDeliLine:(NSMutableArray*)deliLine { // The name of the method is addName:toDeliLine. It will return an NSMutableArray called deliLine.
    
    [deliLine addObject:name]; // is part of the mutablearray class that adds an object to an array. This method takes the string and adds it to the mutablearray deliLine.
    
    return deliLine; // Then returns deliLine with the string now in it.
}

-(NSString*)serveNextCustomerInDeliLine:(NSMutableArray*)deliLine { // returns an NSString. The method is called serveNextCustomerInDeliLine
    
    NSString *theFirstCustomer = deliLine[0]; // temporary object theFirstCustomer is delcared as the first object in the array.
    
    [deliLine removeObjectAtIndex:0]; // removes the first object in the array.
    return theFirstCustomer; // returns the customer that was just deleted from deliLine.
    
}
@end

/*
 
    return YES;
}

-(NSString*)stringWithDeliLine:(NSArray*)array
{
    
    NSString *strstring;
    
    if(array.count>0)
    {
        for(int i = 0;i<array.count;i++)
        {
        
            strstring = [strstring stringByAppendingString:[NSString stringWithFormat:@"\\n%d. %@,",i+1,[array objectAtIndex:i]]];
        
        }
        
    
    }
    else{
    
    strstring =@"The line is currently empty";
    }
    NSLog(@"%@",strstring);
    
    
    return strstring;
    
}
-(void)addName:(NSString*)name toDeliLine:(NSMutableArray*)array
{

}
-(NSString*)serveNextCustomerInDeliLine:(NSMutableArray*)array
{

return [array objectAtIndex:array.count-1];
}
          
/////////////////////////////////////////////////////////////////////////////////////////
 
 *  Define your methods here!

NSString *str1 = @"racecar";
NSMutableString *str2 = [[NSMutableString alloc] init];
NSInteger strLength = [str1 length]-1;
for (NSInteger i=strLength; i>=0; i--)
{
    [str2 appendString:[NSString stringWithFormat:@"%C",[str1 characterAtIndex:i]]];
    
}
if ([str1 isEqual:str2])
{
    NSLog(@"str %@ is palindrome",str1);
}
The local deli is putting in a new computerized queue to keep track of their customers and improve productivity.

Open the *.xcworkspace file. Declare three instance methods (beginning with -) in FISAppDelegate.h:

stringWithDeliLine: should accept an NSArray argument deliLine and return an NSString object.
addName:toDeliLine: should accept an NSString called name and an NSMutableArray called deliLine as arguments, and return nothing.
serveNextCustomerInDeliLine: should accept an NSMutableArray called deliLine as an argument and return an NSString.
Define them in FISAppDelegate.m to return a default value (or nil) and run the tests to fail. Review what the Spec file expects from your methods.
Build the stringWithDeliLine: method to:

if there are no customers in line, return the string The line is currently empty.,
otherwise, return a formatted string beginning with The line is: and appending every customer in the queue on a new line (\n) beginning with their number in the queue, e. g. 1. Anita. Remember, these customers are humans so they count from one—not from zero like computers.
Build the method addName:toDeliLine: method to add the submitted name to the deliLine. Since the deliLine argument is mutable, this method does not need to return an array; the array argument is modified in-place.

 
  */

