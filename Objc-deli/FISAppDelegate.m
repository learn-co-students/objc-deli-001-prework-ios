//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    
   // NSArray *custoer =@[@"Anita", @"Alan", @"Ada", @"Aaron", @"Alan"];
    
   // NSString *strreturn =[self stringWithDeliLine:custoer];
    
    
    return YES;
}

-(NSString*)stringWithDeliLine:(NSArray*)array
{
    
    NSString *strstring;
    
    if(array.count>0)
    {
        strstring =@"The line is:";
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

/*
 
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
 
@end
