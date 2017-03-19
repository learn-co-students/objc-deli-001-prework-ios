//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (NSString *)stringWithDeliLine:(NSArray *)string;
- ()addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine;
- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine;

//the second one accepts two arguments, returns nothing. Not sure I have this quite right


@end
