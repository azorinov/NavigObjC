//
//  OneViewController.h
//  NavigObjC
//
//  Created by Alexander Zorinov on 2023-09-27.
//

#import <UIKit/UIKit.h>
#import "TwoViewController.h"

@interface OneViewController : UIViewController <UIPopoverPresentationControllerDelegate>

@property (nonatomic, strong) IBOutlet TwoViewController    *twoViewController;

@end

