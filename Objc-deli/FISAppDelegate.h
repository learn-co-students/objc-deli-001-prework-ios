//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

-(NSString *)stringWithDeliLine:(NSArray *) deliLine;

-addName:(NSString *) name toDeliLine:(NSMutableArray *) deliline;

-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *) deliLine;

@end
