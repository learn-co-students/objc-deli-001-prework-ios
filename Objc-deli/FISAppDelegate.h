//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/*
 
 *  Declare your methods here!
 
 */

// Build the stringWithDeliLine: method to:
// 1. if there are no customers in line, return the string The line is currently empty.,
// 2. otherwise, return a formatted string beginning with The line is: and appending every customer in the queue on a new line (\n) beginning with their number in the queue, e. g. 1. Anita. Remember, these customers are humans so they count from one—not from zero like computers.
- (NSString *)stringWithDeliLine: (NSArray *)deliLine;

// Build the method addName:toDeliLine: method to add the submitted name to the deliLine. Since the deliLine argument is mutable, this method does not need to return an array; the array argument is modified in-place.
- (void)addName: (NSString *)name toDeliLine: (NSMutableArray *)deliLine;

// Build the method serveNextCustomerInDeliLine: method. Save the first name in the deliLine to an NSString object within the method. Then remove the first object from the deliLine and return the name you removed. Hint: Using removeObject: could be problematic for you. There's another method on NSMutableArray that will let you specify an object to remove by array index.
- (NSString *)serveNextCustomerInDeliLine: (NSMutableArray *)deliLine;

@end
