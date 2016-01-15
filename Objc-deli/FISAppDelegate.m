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
    NSString *theLineContains =@"The line is:";
    NSString *lineContaining = @"";
    NSInteger index;
    if ([deliLine count] == 0 ) {
        
        return emptyCase;
    }
    else {
        
        for (NSInteger i = 0; i < [deliLine count] ; i++) {
            index = i+1;
            //I NEED INTEGER TO BE A VALUE NOT A NUMBER AKA LONG, THAT'S IT. NEED TO LOOK UP HOW TO DO IT.
            NSString *numberInLine = [NSString stringWithFormat:@"\n%ld. ", (long)index];
            NSString *names = (@"%@", deliLine[i]);
            NSString *nameAndNumber = [numberInLine stringByAppendingString:names];
            lineContaining = [lineContaining stringByAppendingString: nameAndNumber];
          //@"The line is:\n1. Anita\n2. Alan\n3. Ada\n4. Aaron\n5. Alan"
            
            /*
             
            NSInteger *numberInLine = (i + 1);
            NSString *componentsOfTheLine = (@"/n%lu.", @"%@", numberInLine, deliLine[i]);
            theLineContains = [NSString stringWithString:componentsOfTheLine];
             
             */
            
          
        }
        return [theLineContains stringByAppendingString:lineContaining];
        
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
    
    //  *******DIDN'T WANT TO DELETE NEXT COMMENT JUST IN CASE I NEED IT BUT WILL PROBABLY TAKE IT OUT!*****  //
    
    
    /* I MIGHT NOT NEED THESE NEXT TWO LINES, REREAD THE ASSIGNMENT AND SEE EXACTLY WHAT SHOULD HAPPEN HERE. I THINK ONLY UPDATING AND ALREADY GIVEN MUTABLE ARRAY! :)
    NSArray *whereDoIGetNamesFrom = @[@"Anita", @"Donny", @"Liana"];
    NSMutableArray *namesList = [NSMutableArray arrayWithArray: whereDoIGetNamesFrom]; //This is temporary go back over this think it through.
     
     */
    /*for (NSUInteger i = 0; i < [deliLine count]; i ++) {
        //I don't know if I need this loop. Will figure out.
    }*/
    [deliLine addObject:name];
    return;
}


/**
 Build the method serveNextCustomerInDeliLine: method. Save the first name in the deliLine to an NSString object within the method. Then remove the first object from the deliLine and return the name you removed. Hint: Using removeObject: could be problematic for you. There's another method on NSMutableArray that will let you specify an object to remove by array index.
 */
- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{

    NSString *firstInLine = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return firstInLine;
}

@end
