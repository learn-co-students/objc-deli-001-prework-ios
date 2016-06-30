//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/*
 
 *  stringWithDeliLine: should accept an NSArray argument deliLine and return an NSString object.
 addName:toDeliLine: should accept an NSString called name and an NSMutableArray called deliLine as arguments, and return nothing.
 serveNextCustomerInDeliLine: should accept an NSMutableArray called deliLine as an argument and return an NSString.
 
 */

//Return formatted string listing customers in deliLine, or message if line is empty.
- (NSString *)stringWithDeliLine:(NSArray *)deliLine;

//Add customer name to deliLine.
- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine;

//Pop first customer off of deliLine and return customer name as string.
- (NSString *)serveNextCustomerInDeliLine: (NSMutableArray *)deliLine;

@end
